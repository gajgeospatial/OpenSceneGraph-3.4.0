# Install script for directory: D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/src/osg

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/OpenSceneGraph")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osg.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgs.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osg.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgs.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osg" TYPE FILE FILES
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/AlphaFunc"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/AnimationPath"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ApplicationUsage"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ArgumentParser"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Array"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ArrayDispatchers"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/AudioStream"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/AutoTransform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Billboard"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BlendColor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BlendEquation"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BlendEquationi"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BlendFunc"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BlendFunci"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BoundingBox"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BoundingSphere"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BoundsChecking"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/buffered_value"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BufferIndexBinding"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BufferObject"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/BufferTemplate"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Callback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Camera"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CameraView"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Capability"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ClampColor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ClearNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ClipControl"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ClipNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ClipPlane"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ClusterCullingCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CollectOccludersVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ColorMask"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ColorMaski"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ColorMatrix"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ComputeBoundsVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ConvexPlanarOccluder"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ConvexPlanarPolygon"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CoordinateSystemNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CopyOp"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CullFace"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CullingSet"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CullSettings"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/CullStack"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/DeleteHandler"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Depth"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/DisplaySettings"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Drawable"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/DrawPixels"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Endian"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Export"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/fast_back_stack"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Fog"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/FragmentProgram"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/FrameBufferObject"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/FrameStamp"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/FrontFace"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Geode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Geometry"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GL2Extensions"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GLDefines"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GLExtensions"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GLBeginEndAdapter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GLObjects"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GLU"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GraphicsCostEstimator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GraphicsContext"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/GraphicsThread"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Group"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Hint"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Image"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ImageSequence"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ImageStream"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ImageUtils"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/io_utils"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/KdTree"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Light"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LightModel"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LightSource"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LineSegment"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LineStipple"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LineWidth"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LOD"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/LogicOp"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Material"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Math"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Matrix"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Matrixd"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Matrixf"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/MatrixTransform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/MixinVector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Multisample"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Node"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/NodeCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/NodeTrackerCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/NodeVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Notify"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Object"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/observer_ptr"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Observer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ObserverNodePath"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/OccluderNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/OcclusionQueryNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/OperationThread"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PatchParameter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PagedLOD"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Plane"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Point"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PointSprite"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PolygonMode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PolygonOffset"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PolygonStipple"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Polytope"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PositionAttitudeTransform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PrimitiveSet"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/PrimitiveRestartIndex"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Program"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Projection"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ProxyNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Quat"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Referenced"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ref_ptr"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/RenderInfo"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/SampleMaski"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Scissor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ScriptEngine"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Sequence"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ShadeModel"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Shader"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ShaderAttribute"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ShaderComposer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ShadowVolumeOccluder"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Shape"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ShapeDrawable"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/State"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/StateAttribute"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/StateAttributeCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/StateSet"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Stats"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Stencil"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/StencilTwoSided"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Switch"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TemplatePrimitiveFunctor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TexEnv"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TexEnvCombine"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TexEnvFilter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TexGen"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TexGenNode"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TexMat"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Texture"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Texture1D"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Texture2D"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Texture2DMultisample"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Texture2DArray"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Texture3D"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TextureBuffer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TextureCubeMap"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TextureRectangle"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Timer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TransferFunction"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Transform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TriangleFunctor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/TriangleIndexFunctor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Uniform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/UserDataContainer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/ValueObject"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2b"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2d"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2f"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2i"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2s"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2ub"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2ui"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec2us"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3b"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3d"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3f"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3i"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3s"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3ub"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3ui"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec3us"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4b"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4d"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4f"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4i"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4s"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4ub"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4ui"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Vec4us"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/VertexAttribDivisor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/VertexProgram"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/View"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osg/Viewport"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/include/osg/Version"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/include/osg/Config"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/include/osg/GL"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

