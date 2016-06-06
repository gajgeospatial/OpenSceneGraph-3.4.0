# Install script for directory: D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/src/osgUtil

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgUtild.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgUtil.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgUtils.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgUtilrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgUtild.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgUtil.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgUtils.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgUtilrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgUtil" TYPE FILE FILES
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/ConvertVec"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/CubeMapGenerator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/CullVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/DelaunayTriangulator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/DisplayRequirementsVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/DrawElementTypeSimplifier"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/EdgeCollector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/Export"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/GLObjectsVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/HalfWayMapGenerator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/HighlightMapGenerator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/IntersectionVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/IntersectVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/IncrementalCompileOperation"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/LineSegmentIntersector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/MeshOptimizers"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/OperationArrayFunctor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/Optimizer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/PerlinNoise"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/PlaneIntersector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/PolytopeIntersector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/PositionalStateContainer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/PrintVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/RayIntersector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/ReflectionMapGenerator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/RenderBin"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/RenderLeaf"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/RenderStage"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/ReversePrimitiveFunctor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/SceneView"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/SceneGraphBuilder"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/ShaderGen"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/Simplifier"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/SmoothingVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/StateGraph"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/Statistics"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/TangentSpaceGenerator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/Tessellator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/TransformAttributeFunctor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/TransformCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/TriStripVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/UpdateVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgUtil/Version"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

