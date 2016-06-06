# Install script for directory: D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/src/osgParticle

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgParticled.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgParticle.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgParticles.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/lib/osgParticlerd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgParticled.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgParticle.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgParticles.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/msvc/bin/osg130-osgParticlerd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgParticle" TYPE FILE FILES
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/AccelOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/AngularAccelOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/BoxPlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/CenteredPlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ConnectedParticleSystem"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ConstantRateCounter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Counter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Emitter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ExplosionDebrisEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ExplosionEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Export"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/FireEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/FluidFrictionOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/FluidProgram"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ForceOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Interpolator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/LinearInterpolator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ModularEmitter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ModularProgram"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/MultiSegmentPlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Operator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Particle"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ParticleEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ParticleProcessor"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ParticleSystem"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ParticleSystemUpdater"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Placer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/PointPlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/PrecipitationEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Program"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/RadialShooter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/RandomRateCounter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/range"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/SectorPlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/SegmentPlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Shooter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/SmokeEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/SmokeTrailEffect"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/VariableRateCounter"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/Version"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/CompositePlacer"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/AngularDampingOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/DampingOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/ExplosionOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/OrbitOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/DomainOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/BounceOperator"
    "D:/Development/op3d_active/OpenSceneGraph-3.4.0-rc5/include/osgParticle/SinkOperator"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libopenscenegraph-dev")

