/* -*-c++-*- OpenSceneGraph - Copyright (C) 1998-2006 Robert Osfield
 *
 * This library is open source and may be redistributed and/or modified under
 * the terms of the OpenSceneGraph Public License (OSGPL) version 0.0 or
 * (at your option) any later version.  The full license is in LICENSE file
 * included with this distribution, and on the openscenegraph.org website.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * OpenSceneGraph Public License for more details.
*/

//
// OpenFlight� loader for OpenSceneGraph
//
//  Copyright (C) 2005-2007  Brede Johansen
//

#include <stdexcept>
#include <osg/Notify>
#include <osg/ProxyNode>
#include <osgDB/FileNameUtils>
#include <osgDB/FileUtils>
#include <osgDB/Registry>
#include <osgDB/ReadFile>
#include <OpenThreads/ReentrantMutex>
#include <osgUtil/Optimizer>
#include <cdbGlobals/cdbGlobals>

#include "Registry.h"
#include "Document.h"
#include "RecordInputStream.h"
#include "DataOutputStream.h"
#include "FltExportVisitor.h"
#include "ExportOptions.h"

#define SERIALIZER() OpenThreads::ScopedLock<OpenThreads::ReentrantMutex> lock(_serializerMutex)

using namespace flt;
using namespace osg;
using namespace osgDB;

// pull in symbols from attr plugin
USE_OSGPLUGIN(attr)

// pull in symbols from individual .o's to enable the static build to work
// note, following USE_FLTRECORD list was generated by running:
// grep REGISTER_FLTRECORD * -h | grep -v "#define" | sed 's/REGISTER_FLTRECORD/USE_FLTRECORD/g'
USE_FLTRECORD(Comment, COMMENT_OP)
USE_FLTRECORD(LongID, LONG_ID_OP)
USE_FLTRECORD(Matrix, MATRIX_OP)
USE_FLTRECORD(Multitexture, MULTITEXTURE_OP)
USE_FLTRECORD(UVList, UV_LIST_OP)
USE_FLTRECORD(Replicate, REPLICATE_OP)
USE_FLTRECORD(DummyRecord, OLD_TRANSLATE2_OP)
USE_FLTRECORD(DummyRecord, OLD_ROTATE_ABOUT_POINT_OP)
USE_FLTRECORD(DummyRecord, OLD_ROTATE_ABOUT_EDGE_OP)
USE_FLTRECORD(DummyRecord, OLD_SCALE_OP)
USE_FLTRECORD(DummyRecord, OLD_TRANSLATE_OP)
USE_FLTRECORD(DummyRecord, OLD_NONUNIFORM_SCALE_OP)
USE_FLTRECORD(DummyRecord, OLD_ROTATE_ABOUT_POINT2_OP)
USE_FLTRECORD(DummyRecord, OLD_ROTATE_SCALE_TO_POINT_OP)
USE_FLTRECORD(DummyRecord, OLD_PUT_TRANSFORM_OP)
USE_FLTRECORD(DummyRecord, OLD_BOUNDING_BOX_OP)
USE_FLTRECORD(DummyRecord, INDEXED_STRING_OP)
USE_FLTRECORD(DummyRecord, ROAD_ZONE_OP)
USE_FLTRECORD(DummyRecord, ROTATE_ABOUT_EDGE_OP)
USE_FLTRECORD(DummyRecord, TRANSLATE_OP)
USE_FLTRECORD(DummyRecord, NONUNIFORM_SCALE_OP)
USE_FLTRECORD(DummyRecord, ROTATE_ABOUT_POINT_OP)
USE_FLTRECORD(DummyRecord, ROTATE_SCALE_TO_POINT_OP)
USE_FLTRECORD(DummyRecord, PUT_TRANSFORM_OP)
USE_FLTRECORD(DummyRecord, GENERAL_MATRIX_OP)
USE_FLTRECORD(DummyRecord, VECTOR_OP)
USE_FLTRECORD(DummyRecord, BOUNDING_BOX_OP)
USE_FLTRECORD(DummyRecord, BOUNDING_SPHERE_OP)
USE_FLTRECORD(DummyRecord, BOUNDING_CYLINDER_OP)
USE_FLTRECORD(DummyRecord, BOUNDING_CONVEX_HULL_OP)
USE_FLTRECORD(DummyRecord, BOUNDING_HISTOGRAM)
USE_FLTRECORD(DummyRecord, BOUNDING_VOLUME_CENTER_OP)
USE_FLTRECORD(DummyRecord, BOUNDING_VOLUME_ORIENTATION_OP)
USE_FLTRECORD(DummyRecord, HISTOGRAM_BOUNDING_VOLUME_OP)
USE_FLTRECORD(PushLevel, PUSH_LEVEL_OP)
USE_FLTRECORD(PopLevel, POP_LEVEL_OP)
USE_FLTRECORD(PushSubface, PUSH_SUBFACE_OP)
USE_FLTRECORD(PopSubface, POP_SUBFACE_OP)
USE_FLTRECORD(PushExtension, PUSH_EXTENSION_OP)
USE_FLTRECORD(PopExtension, POP_EXTENSION_OP)
USE_FLTRECORD(PushAttribute, PUSH_ATTRIBUTE_OP)
USE_FLTRECORD(PopAttribute, POP_ATTRIBUTE_OP)
USE_FLTRECORD(Face, FACE_OP)
USE_FLTRECORD(VertexListRecord, VERTEX_LIST_OP)
USE_FLTRECORD(MorphVertexList, MORPH_VERTEX_LIST_OP)
USE_FLTRECORD(Mesh, MESH_OP)
USE_FLTRECORD(LocalVertexPool, LOCAL_VERTEX_POOL_OP)
USE_FLTRECORD(MeshPrimitive, MESH_PRIMITIVE_OP)
USE_FLTRECORD(LightPoint, LIGHT_POINT_OP)
USE_FLTRECORD(IndexedLightPoint, INDEXED_LIGHT_POINT_OP)
USE_FLTRECORD(LightPointSystem, LIGHT_POINT_SYSTEM_OP)
USE_FLTRECORD(VertexPalette, VERTEX_PALETTE_OP)
USE_FLTRECORD(ColorPalette, COLOR_PALETTE_OP)
USE_FLTRECORD(NameTable, NAME_TABLE_OP)
USE_FLTRECORD(MaterialPalette, MATERIAL_PALETTE_OP)
USE_FLTRECORD(OldMaterialPalette, OLD_MATERIAL_PALETTE_OP)
USE_FLTRECORD(TexturePalette, TEXTURE_PALETTE_OP)
USE_FLTRECORD(EyepointAndTrackplanePalette, EYEPOINT_AND_TRACKPLANE_PALETTE_OP)
USE_FLTRECORD(LinkagePalette, LINKAGE_PALETTE_OP)
USE_FLTRECORD(SoundPalette, SOUND_PALETTE_OP)
USE_FLTRECORD(LightSourcePalette, LIGHT_SOURCE_PALETTE_OP)
USE_FLTRECORD(LightPointAppearancePalette, LIGHT_POINT_APPEARANCE_PALETTE_OP)
USE_FLTRECORD(LightPointAnimationPalette, LIGHT_POINT_ANIMATION_PALETTE_OP)
USE_FLTRECORD(LineStylePalette, LINE_STYLE_PALETTE_OP)
USE_FLTRECORD(TextureMappingPalette, TEXTURE_MAPPING_PALETTE_OP)
USE_FLTRECORD(ShaderPalette, SHADER_PALETTE_OP)
USE_FLTRECORD(Header, HEADER_OP)
USE_FLTRECORD(Group, GROUP_OP)
USE_FLTRECORD(DegreeOfFreedom, DOF_OP)
USE_FLTRECORD(LevelOfDetail, LOD_OP)
USE_FLTRECORD(OldLevelOfDetail, OLD_LOD_OP)
USE_FLTRECORD(Switch, SWITCH_OP)
USE_FLTRECORD(ExternalReference, EXTERNAL_REFERENCE_OP)
USE_FLTRECORD(InstanceDefinition, INSTANCE_DEFINITION_OP)
USE_FLTRECORD(InstanceReference, INSTANCE_REFERENCE_OP)
USE_FLTRECORD(Extension, EXTENSION_OP)
USE_FLTRECORD(Object, OBJECT_OP)
USE_FLTRECORD(LightSource, LIGHT_SOURCE_OP)
USE_FLTRECORD(DummyRecord, 103)
USE_FLTRECORD(DummyRecord, 104)
USE_FLTRECORD(DummyRecord, 117)
USE_FLTRECORD(DummyRecord, 118)
USE_FLTRECORD(DummyRecord, 120)
USE_FLTRECORD(DummyRecord, 121)
USE_FLTRECORD(DummyRecord, 124)
USE_FLTRECORD(DummyRecord, 125)
USE_FLTRECORD(RoadSegment, ROAD_SEGMENT_OP)
USE_FLTRECORD(RoadConstruction, ROAD_CONSTRUCTION_OP)
USE_FLTRECORD(RoadPath, ROAD_PATH_OP)
USE_FLTRECORD(VertexC, VERTEX_C_OP)
USE_FLTRECORD(VertexCN, VERTEX_CN_OP)
USE_FLTRECORD(VertexCT, VERTEX_CT_OP)
USE_FLTRECORD(VertexCNT, VERTEX_CNT_OP)
USE_FLTRECORD(AbsoluteVertex, OLD_ABSOLUTE_VERTEX_OP)
USE_FLTRECORD(ShadedVertex, OLD_SHADED_VERTEX_OP)
USE_FLTRECORD(NormalVertex, OLD_NORMAL_VERTEX_OP)



class ReadExternalsVisitor : public osg::NodeVisitor
{
    osg::ref_ptr<ReaderWriter::Options> _options;
    bool _cloneExternalReferences;

public:

    ReadExternalsVisitor(ReaderWriter::Options* options) :
        osg::NodeVisitor(osg::NodeVisitor::TRAVERSE_ALL_CHILDREN),
        _options(options),
        _cloneExternalReferences(false)
    {
        if (options)
            _cloneExternalReferences = (options->getOptionString().find("cloneExternalReferences")!=std::string::npos);
    }

    virtual ~ReadExternalsVisitor() {}

    virtual void apply(ProxyNode& node)
    {
        // Transfer ownership of pools.
        _options->setUserData( node.getUserData() );
        node.setUserData(NULL);

        for (unsigned int pos=0; pos<node.getNumFileNames(); pos++)
        {
            std::string filename = node.getFileName(pos);

            // read external
            osg::ref_ptr<osg::Node> external = osgDB::readNodeFile(filename,_options.get());
            if (external.valid())
            {
                if (_cloneExternalReferences)
                    external = dynamic_cast<osg::Node*>(external->clone(osg::CopyOp(osg::CopyOp::DEEP_COPY_NODES)));

                node.addChild(external.get());
            }
        }
    }
};



/*!

FLTReaderWriter supports importing and exporting OSG scene graphs
from/to OpenFlight files.

<table>
  <tr>
    <th></th>
    <th align="center">Node</th>
    <th align="center">Object</th>
    <th align="center">Image</th>
    <th align="center">HeightField</th>
  </tr>
  <tr>
    <td align="right">Read</td>
    <td align="center"><strong>X</strong></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td align="right">Write</td>
    <td align="center"><strong>X</strong></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

*/

class FLTReaderWriter : public ReaderWriter
{
    public:
        FLTReaderWriter()
          : _implicitPath( "." )
        {
            supportsExtension("flt","OpenFlight format");

            supportsOption("clampToEdge","Import option");
            supportsOption("keepExternalReferences","Import option");
            supportsOption("preserveFace","Import option");
            supportsOption("preserveObject","Import option");
            supportsOption("replaceDoubleSidedPolys","Import option");
            supportsOption("dofAnimation","Import option");
            supportsOption("billboardCenter","Import option");
            supportsOption("noTextureAlphaForTransparancyBinning","Import option");
            supportsOption("readObjectRecordData","Import option");
            supportsOption("preserveNonOsgAttrsAsUserData","Import option: If present in the Options string, following OpenFlight specific attributes will be stored as UserValue: surface: <UA:SMC>, feature: <UA:FID>, IRColor: <UA:IRC>");
            supportsOption("noUnitsConversion","Import option");
            supportsOption("convertToFeet","Import option");
            supportsOption("convertToInches","Import option");
            supportsOption("convertToMeters","Import option");
            supportsOption("convertToKilometers","Import option");
            supportsOption("convertToNauticalMiles","Import option");

            supportsOption( "version=<ver>", "Export option: Specifies the version of the output OpenFlight file. Supported values include 15.7, 15.8, and 16.1. Default is 16.1. Example: \"version=15.8\"." );
            supportsOption( "units=<units>", "Export option: Specifies the contents of the Units field of the OpenFlight header record. Valid values include INCHES, FEET, METERS, KILOMETERS, and NAUTICAL_MILES. Default is METERS. Example: \"units=METERS\"." );
            supportsOption( "validate", "Export option: If present in the Options string, the plugin does not write an OpenFlight file. Instead, it returns an indication of the scene graph's suitability for OpenFlight export." );
            supportsOption( "tempDir=<dir>", "Export option: Specifies the directory to use for creation of temporary files. If not specified, the directory is taken from the file name. If the file doesn't contain a path, the current working directory is used. Applications should set this to the name of their app-specific temp directory. If the path contains spaces, use double quotes to ensure correct parsing. Examples: \"tempDir=/tmp\", \"tempDir=\"C:\\My Temp Dir\"." );
            supportsOption( "lighting=<ON|OFF>", "Export option: Specifies a default enable/disable state for lighting, for Nodes in the exported scene graph that don't set it explicitly. By default, the exporter assumes lighting is enabled (GL_LIGHTING ON). Set this to either ON or OFF. Example: \"lighting=OFF\"." );
			supportsOption("stripTextureFilePath", "Export option: If present in the Options string, the exporter strips the path from texture file names, and writes only the texture file name to the FLT Texture Palette. By default, the exporter doesn't strip the path, and the name written to the Texture Palette is taken directly from the osg::Image object referenced by the osg::Texture2D StateAttribute.");
			supportsOption("TextureInArchive", "Import option: If present in the Options string, an archive name is located in the dbpath. When this option is present textures are mapped to and read from the named archive file according to the CDB specification");
			supportsOption("Remap2Directory", "Import option: If present in the Options string, directory names are parsed from the dbpath. When this option is present textures are mapped to and read from the named directory according to the CDB specification");
			supportsOption("CDBVerification", "Import option: If present in the Options string, CDB Rules Messages are output durring model load. When this option is present textures are mapped to and read from the named directory according to the CDB specification");
			supportsOption("Switchdds2png", "Import option: If present in the Options string, if a dds texture is found and a png texture of the same name is found in the search path the png texuter is used");
		}

        virtual const char* className() const { return "FLT Reader/Writer"; }

        virtual bool acceptsExtension(const std::string& extension) const
        {
            return equalCaseInsensitive(extension,"flt") || extension.empty();
        }

        virtual ReadResult readObject(const std::string& file, const Options* options) const
        {
            return readNode(file, options);
        }

        virtual ReadResult readNode(const std::string& file, const Options* options) const
        {
            SERIALIZER();

            std::string ext = osgDB::getLowerCaseFileExtension(file);
            if (!acceptsExtension(ext)) return ReadResult::FILE_NOT_HANDLED;

            std::string fileName = osgDB::findDataFile(file, options);
			if (fileName.empty())
			{
				if (file.find("D500_") != std::string::npos)
				{
					if (CDB_Global::getInstance()->Has_Layer("GTModelGeometry_Mda"))
					{
						osg::ref_ptr<osgDB::Archive> ar = NULL;

						std::string GeometryArchiveName = "gpkg:GTModelGeometry_Mda.zip";
						ar = osgDB::openArchive(GeometryArchiveName, osgDB::ReaderWriter::READ);
						if (ar)
						{
							std::string name2find = file.substr(2);
							std::string modelinArchive = "";
							osgDB::Archive::FileNameList Archive_FileList;
							ar->getFileNames(Archive_FileList);
							for each(std::string name in Archive_FileList)
							{
								if (name.find(name2find) != std::string::npos)
								{
									modelinArchive = name;
									break;
								}
							}
							if (!modelinArchive.empty())
							{
								// in local cache?
								{
									osg::Node* node = flt::Registry::instance()->getExternalFromLocalCache(modelinArchive);
									if (node)
									{
										ar.release();
										return ReadResult(node, ReaderWriter::ReadResult::FILE_LOADED_FROM_CACHE);
									}
								}

								osg::ref_ptr<Options> localoptions = options ? static_cast<Options*>(options->clone(osg::CopyOp::SHALLOW_COPY)) : new Options;
								std::string modeltextPath = "gpkg:GTModelTexture_Mda.zip";
								localoptions->setDatabasePath(modeltextPath);
								std::string options_string = localoptions->getOptionString();
								if (options_string.empty())
									options_string = "TextureInArchive";
								else
									options_string.append(";TextureInArchive");
								localoptions->setOptionString(options_string);
								{
									ReadResult rr = ar->readNode(modelinArchive,localoptions);
									ar.release();
									localoptions = NULL;
									return rr;
								}

							}
						}
						else
							return ReadResult::FILE_NOT_FOUND;
					}
					else
						return ReadResult::FILE_NOT_FOUND;
				}
				else
					return ReadResult::FILE_NOT_FOUND;
			}

            // in local cache?
            {
                osg::Node* node = flt::Registry::instance()->getExternalFromLocalCache(fileName);
                if (node)
                    return ReadResult(node, ReaderWriter::ReadResult::FILE_LOADED_FROM_CACHE);
            }

            // setting up the database path so that internally referenced file are searched for on relative paths.
            osg::ref_ptr<Options> local_opt = options ? static_cast<Options*>(options->clone(osg::CopyOp::SHALLOW_COPY)) : new Options;
            local_opt->getDatabasePathList().push_front(osgDB::getFilePath(fileName));

            ReadResult rr;

            // read file
            {
                osgDB::ifstream istream;
                istream.imbue(std::locale::classic());
                istream.open(fileName.c_str(), std::ios::in | std::ios::binary);

                if (istream)
                {
                    rr = readNode(istream,local_opt.get());
                }
            }

            static int nestedExternalsLevel = 0;
            if (rr.success())
            {
                // add to local cache.
                flt::Registry::instance()->addExternalToLocalCache(fileName,rr.getNode());

                bool keepExternalReferences = false;
                if (options)
                    keepExternalReferences = (options->getOptionString().find("keepExternalReferences")!=std::string::npos);


                if ( !keepExternalReferences )
                {
                    OSG_DEBUG << "keepExternalReferences not found, so externals will be re-readed"<<std::endl;
                    // read externals.
                    if (rr.getNode())
                    {
                        nestedExternalsLevel++;
                        ReadExternalsVisitor visitor(local_opt.get());
                        rr.getNode()->accept(visitor);
                        nestedExternalsLevel--;
                    }
                }
                else
                {
                    OSG_DEBUG << "keepExternalReferences found, so externals will be left as ProxyNodes"<<std::endl;
                }
            }

            // clear local cache.
            if (nestedExternalsLevel==0)
                flt::Registry::instance()->clearLocalCache();

            return rr;
        }

        virtual ReadResult readObject(std::istream& fin, const Options* options) const
        {
            return readNode(fin, options);
        }

        virtual ReadResult readNode(std::istream& fin, const Options* options) const
        {
            Document document;
            document.setOptions(options);

            // option string and parent pools
            if (options)
            {
                const char readerMsg[] = "flt reader option: ";

                document.setReplaceClampWithClampToEdge((options->getOptionString().find("clampToEdge")!=std::string::npos));
                OSG_DEBUG << readerMsg << "clampToEdge=" << document.getReplaceClampWithClampToEdge() << std::endl;

                document.setKeepExternalReferences((options->getOptionString().find("keepExternalReferences")!=std::string::npos));
                OSG_DEBUG << readerMsg << "keepExternalReferences=" << document.getKeepExternalReferences() << std::endl;

				document.setTextureInArchive((options->getOptionString().find("TextureInArchive") != std::string::npos));
				OSG_DEBUG << readerMsg << "TextureInArchive=" << document.getTextureInArchive() << std::endl;

				document.setRemap2Directory((options->getOptionString().find("Remap2Directory") != std::string::npos));
				OSG_DEBUG << readerMsg << "Remap2Directory=" << document.getRemap2Directory() << std::endl;

				document.setCDB_Verify((options->getOptionString().find("CDBVerification") != std::string::npos));
				OSG_DEBUG << readerMsg << "CDBVerification" << document.getRemap2Directory() << std::endl;

				document.setDDS2PNG((options->getOptionString().find("Switchdds2png") != std::string::npos));
				OSG_DEBUG << readerMsg << "Switchdds2png" << document.getDDS2PNG() << std::endl;

				document.setPreserveFace((options->getOptionString().find("preserveFace")!=std::string::npos));
                OSG_DEBUG << readerMsg << "preserveFace=" << document.getPreserveFace() << std::endl;

                document.setPreserveObject((options->getOptionString().find("preserveObject")!=std::string::npos));
                OSG_DEBUG << readerMsg << "preserveObject=" << document.getPreserveObject() << std::endl;

                document.setReplaceDoubleSidedPolys((options->getOptionString().find("replaceDoubleSidedPolys")!=std::string::npos));
                OSG_DEBUG  << readerMsg << "replaceDoubleSidedPolys=" << document.getReplaceDoubleSidedPolys() << std::endl;

                document.setDefaultDOFAnimationState((options->getOptionString().find("dofAnimation")!=std::string::npos));
                OSG_DEBUG << readerMsg << "dofAnimation=" << document.getDefaultDOFAnimationState() << std::endl;

                document.setUseBillboardCenter((options->getOptionString().find("billboardCenter")!=std::string::npos));
                OSG_DEBUG << readerMsg << "billboardCenter=" << document.getUseBillboardCenter() << std::endl;

                document.setUseTextureAlphaForTransparancyBinning(options->getOptionString().find("noTextureAlphaForTransparancyBinning")==std::string::npos);
                OSG_DEBUG << readerMsg << "noTextureAlphaForTransparancyBinning=" << !document.getUseTextureAlphaForTransparancyBinning() << std::endl;

                document.setReadObjectRecordData(options->getOptionString().find("readObjectRecordData")==std::string::npos);
                OSG_DEBUG << readerMsg << "readObjectRecordData=" << !document.getReadObjectRecordData() << std::endl;

                document.setPreserveNonOsgAttrsAsUserData((options->getOptionString().find("preserveNonOsgAttrsAsUserData")!=std::string::npos));
                OSG_DEBUG << readerMsg << "preserveNonOsgAttrsAsUserData=" << document.getPreserveNonOsgAttrsAsUserData() << std::endl;

                document.setDoUnitsConversion((options->getOptionString().find("noUnitsConversion")==std::string::npos)); // default to true, unless noUnitsConversion is specified.
                OSG_DEBUG << readerMsg << "noUnitsConversion=" << !document.getDoUnitsConversion() << std::endl;

                if (document.getDoUnitsConversion())
                {
                    if (options->getOptionString().find("convertToFeet")!=std::string::npos)
                        document.setDesiredUnits(FEET);
                    else if (options->getOptionString().find("convertToInches")!=std::string::npos)
                        document.setDesiredUnits(INCHES);
                    else if (options->getOptionString().find("convertToMeters")!=std::string::npos)
                        document.setDesiredUnits(METERS);
                    else if (options->getOptionString().find("convertToKilometers")!=std::string::npos)
                        document.setDesiredUnits(KILOMETERS);
                    else if (options->getOptionString().find("convertToNauticalMiles")!=std::string::npos)
                        document.setDesiredUnits(NAUTICAL_MILES);
                }

                const ParentPools* pools = dynamic_cast<const ParentPools*>( options->getUserData() );
                if (pools)
                {
                    // This file is an external reference. The individual pools will
                    // be non-NULL if the parent is overriding the ext ref model's pools.
                    if (pools->getColorPool())
                        document.setColorPool( pools->getColorPool(), true );
                    if (pools->getTexturePool())
                        document.setTexturePool( pools->getTexturePool(), true );
                    if (pools->getMaterialPool())
                        document.setMaterialPool( pools->getMaterialPool(), true );
                    if (pools->getLightSourcePool())
                        document.setLightSourcePool( pools->getLightSourcePool(), true );
                    if (pools->getLPAppearancePool())
                        document.setLightPointAppearancePool( pools->getLPAppearancePool(), true );
                    if (pools->getLPAnimationPool())
                        document.setLightPointAnimationPool( pools->getLPAnimationPool(), true );
                    if (pools->getShaderPool())
                        document.setShaderPool( pools->getShaderPool(), true );
                }

				if (document.getTextureInArchive())
				{
					//Set up to handle CDB models as per (CDB) specification
					//Using this option overides the remap to directory option if both are set
					osgDB::FilePathList dbpaths = options->getDatabasePathList();
					for (osgDB::FilePathList::iterator dbt = dbpaths.begin(); dbt != dbpaths.end(); ++dbt)
					{
						std::string aname = *dbt;
						//Make sure it is a zip file for now
						//There is an osDB:: general test for being an archive
						//that can be used if anything other than CDB needs this option in an openflight loader
						//
						unsigned int pos = aname.rfind(".zip");
						if (pos == aname.length() - 4)
						{
							document.OpenArchive(aname);
						}
					}
					document.setRemap2Directory(false);
				}
				else if (document.getRemap2Directory())
				{
					osgDB::FilePathList dbpaths = options->getDatabasePathList();
					if (dbpaths.size() >= 2)
					{
						std::string directory;
						std::string fname;
						bool have_dir = false;
						bool have_fname = false;
						for (osgDB::FilePathList::iterator dbt = dbpaths.begin(); dbt != dbpaths.end(); ++dbt)
						{
							std::string test = *dbt;
							if (test.find("301_GSModelTexture") != std::string::npos)
							{
								directory = test;
								have_dir = true;
							}
							else if (test.rfind(".flt") != std::string::npos)
							{
								fname = test;
								have_fname = true;
							}

							if (have_dir && have_fname)
							{
								document.SetTexture2MapDirectory(directory, fname);
								break;
							}
						}
						document.SetModelExportTextureDirectory(dbpaths[1], dbpaths[0]);
					}					
					else
						document.setRemap2Directory(false);
				}
            }

            const int RECORD_HEADER_SIZE = 4;
            opcode_type continuationOpcode = INVALID_OP;
            std::string continuationBuffer;

            while (fin.good() && !document.done())
            {
                // The continuation record complicates things a bit.

                // get opcode and size
                flt::DataInputStream dataStream(fin.rdbuf());
                opcode_type opcode = (opcode_type)dataStream.readUInt16();
                size_type   size   = (size_type)dataStream.readUInt16();

                // If size == 0, an EOF has probably been reached, i.e. there is nothing
                // more to read so we must return.
                if (size==0)
                {
                    // If a header was read, we return it.
                    // This allows us handle files with empty hierarchies.
                    if (document.getHeaderNode())
                    {
                        return document.getHeaderNode();
                    }
                    else // (no valid header)
                    {
                        return ReadResult::ERROR_IN_READING_FILE;
                    }
                }

                // variable length record complete?
                if (!continuationBuffer.empty() && opcode!=CONTINUATION_OP)
                {
                    // parse variable length record
                    std::stringbuf sb(continuationBuffer);
                    flt::RecordInputStream recordStream(&sb);
                    recordStream.readRecordBody(continuationOpcode, continuationBuffer.length(), document);

                    continuationOpcode = INVALID_OP;
                    continuationBuffer.clear();
                }

                // variable length record use continuation buffer in case next
                // record is a continuation record.
                if (opcode==EXTENSION_OP ||
                    opcode==NAME_TABLE_OP ||
                    opcode==LOCAL_VERTEX_POOL_OP ||
                    opcode==MESH_PRIMITIVE_OP)
                {
                    continuationOpcode = opcode;

                    if (size > RECORD_HEADER_SIZE)
                    {
                        // Put record in buffer.
                        std::string buffer((std::string::size_type)size-RECORD_HEADER_SIZE,'\0');
                        fin.read(&buffer[0], size-RECORD_HEADER_SIZE);

                        // Can't parse it until we know we have the complete record.
                        continuationBuffer = buffer;
                    }
                }
                else if (opcode==CONTINUATION_OP)
                {
                    if (size > RECORD_HEADER_SIZE)
                    {
                        std::string buffer((std::string::size_type)size-RECORD_HEADER_SIZE,'\0');
                        fin.read(&buffer[0], size-RECORD_HEADER_SIZE);

                        // The record continues.
                        continuationBuffer.append(buffer);
                    }
                }
                else if (opcode==VERTEX_PALETTE_OP)
                {
                    // Vertex Palette needs the file stream as it reads beyond the current record.
                    flt::RecordInputStream recordStream(fin.rdbuf());
                    recordStream.readRecordBody(opcode, size, document);
                }
                else // normal (fixed size) record.
                {
                    // Put record in buffer.
                    std::string buffer((std::string::size_type)size,'\0');
                    if (size > RECORD_HEADER_SIZE)
                        fin.read(&buffer[0], size-RECORD_HEADER_SIZE);

                    // Parse buffer.
                    std::stringbuf sb(buffer);
                    flt::RecordInputStream recordStream(&sb);
                    recordStream.readRecordBody(opcode, size, document);
                }
            }

            if (!document.getHeaderNode())
                return ReadResult::ERROR_IN_READING_FILE;

            if (!document.getPreserveFace())
            {
                osgUtil::Optimizer optimizer;
                optimizer.optimize(document.getHeaderNode(),
                    osgUtil::Optimizer::SHARE_DUPLICATE_STATE |
                    osgUtil::Optimizer::MERGE_GEOMETRY |
                    osgUtil::Optimizer::MERGE_GEODES |
                    osgUtil::Optimizer::TESSELLATE_GEOMETRY |
                    osgUtil::Optimizer::STATIC_OBJECT_DETECTION);
            }

			if (document.getTextureInArchive())
				document.archiveRelease();
			if (document.getCDB_Verify())
			{
				if (!document.getCDBModel_Has_Sigsize())
				{
					OSG_WARN << "Model File did not contain Significant Size Information" << std::endl;

				}
			}
            return document.getHeaderNode();
        }

        virtual WriteResult writeObject(const Object& object,const std::string& fileName, const osgDB::ReaderWriter::Options* options) const
        {
            const Node* node = dynamic_cast<const Node*>(&object);
            if (node) return writeNode( *node, fileName, options );
            return WriteResult::FILE_NOT_HANDLED;
        }

        virtual WriteResult writeNode( const osg::Node& node, const std::string& fileName, const Options* options ) const
        {
            if ( fileName.empty() )
            {
                return WriteResult::FILE_NOT_HANDLED;
            }

            std::string ext = osgDB::getLowerCaseFileExtension( fileName );
            if ( !acceptsExtension(ext) )
                return WriteResult::FILE_NOT_HANDLED;

            // Get and save the implicit path name (in case a path wasn't specified in Options).
            std::string filePath = osgDB::getFilePath( fileName );
            if (!filePath.empty())
                _implicitPath = filePath;

            osgDB::ofstream fOut;
            fOut.open( fileName.c_str(), std::ios::out | std::ios::binary );
            if ( fOut.fail())
            {
                OSG_FATAL << "fltexp: Failed to open output stream." << std::endl;
                return WriteResult::ERROR_IN_WRITING_FILE;
            }

            WriteResult wr = WriteResult::FILE_NOT_HANDLED;
            wr = writeNode( node, fOut, options );
            fOut.close();

            return wr;
        }


        virtual WriteResult writeObject(const Object& object,std::ostream& fout, const osgDB::ReaderWriter::Options* options) const
        {
            const Node* node = dynamic_cast<const Node*>(&object);
            if (node) return writeNode( *node, fout, options );
            return WriteResult::FILE_NOT_HANDLED;
        }

        virtual WriteResult writeNode( const osg::Node& node, std::ostream& fOut, const Options* options ) const
        {
            // Convert Options to FltOptions.
            ExportOptions* fltOpt = new ExportOptions( options );
            fltOpt->parseOptionsString();

            // If user didn't specify a temp dir, use the output directory
            //   that was implicit in the output file name.
            if (fltOpt->getTempDir().empty())
                fltOpt->setTempDir( _implicitPath );
            if (!fltOpt->getTempDir().empty())
            {
                // If the temp directory doesn't already exist, make it.
                if ( !osgDB::makeDirectory( fltOpt->getTempDir() ) )
                {
                    OSG_FATAL << "fltexp: Error creating temp dir: " << fltOpt->getTempDir() << std::endl;
                    return WriteResult::ERROR_IN_WRITING_FILE;
                }
            }

            flt::DataOutputStream dos( fOut.rdbuf(), fltOpt->getValidateOnly() );
            flt::FltExportVisitor fnv( &dos, fltOpt );

            // Hm. 'node' is const, but in order to write out this scene graph,
            //   must use Node::accept() which requires 'node' to be non-const.
            //   Pretty much requires casting away const.
            osg::Node* nodeNonConst = const_cast<osg::Node*>( &node );
            if (!nodeNonConst)
                return WriteResult::ERROR_IN_WRITING_FILE;
            nodeNonConst->accept( fnv );
            fnv.complete( node );

            return fltOpt->getWriteResult();
        }

    protected:
        mutable std::string _implicitPath;

        mutable OpenThreads::ReentrantMutex _serializerMutex;
};

// now register with Registry to instantiate the above
// reader/writer.
REGISTER_OSGPLUGIN(OpenFlight, FLTReaderWriter)
