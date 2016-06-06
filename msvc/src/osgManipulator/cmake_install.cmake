# Install script for directory: D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/src/osgManipulator

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgManipulatord.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgManipulator.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgManipulators.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgManipulatorrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgManipulatord.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgManipulator.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgManipulators.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgManipulatorrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgManipulator" TYPE FILE FILES
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/AntiSquish"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Command"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/CommandManager"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Constraint"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Dragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Export"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Projector"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/RotateCylinderDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/RotateSphereDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Scale1DDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Scale2DDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/ScaleAxisDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Selection"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TabBoxDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TabBoxTrackballDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TabPlaneDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TabPlaneTrackballDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TrackballDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Translate1DDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Translate2DDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TranslateAxisDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/TranslatePlaneDragger"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgManipulator/Version"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

