# Install script for directory: D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/src/osgAnimation

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgAnimationd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgAnimation.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgAnimations.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgAnimationrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgAnimationd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgAnimation.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgAnimations.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgAnimationrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgAnimation" TYPE FILE FILES
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Action"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/ActionAnimation"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/ActionBlendIn"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/ActionBlendOut"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/ActionCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/ActionStripAnimation"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/ActionVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Animation"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/AnimationManagerBase"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/AnimationUpdateCallback"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/BasicAnimationManager"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Bone"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/BoneMapVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Channel"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/CubicBezier"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/EaseMotion"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Export"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/FrameAction"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Interpolator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Keyframe"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/LinkVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/MorphGeometry"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/RigGeometry"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/RigTransform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/RigTransformHardware"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/RigTransformSoftware"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Sampler"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Skeleton"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedMatrixElement"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedQuaternionElement"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedRotateAxisElement"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedScaleElement"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedTransformElement"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedTranslateElement"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StackedTransform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StatsVisitor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/StatsHandler"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Target"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Timeline"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/TimelineAnimationManager"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/UpdateBone"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/UpdateMaterial"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/UpdateMatrixTransform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/UpdateUniform"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/Vec3Packed"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgAnimation/VertexInfluence"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

