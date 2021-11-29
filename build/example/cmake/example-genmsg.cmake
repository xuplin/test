# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "example: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iexample:/home/xuplin/test/src/example/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(example_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xuplin/test/src/example/msg/answer.msg" NAME_WE)
add_custom_target(_example_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example" "/home/xuplin/test/src/example/msg/answer.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(example
  "/home/xuplin/test/src/example/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example
)

### Generating Services

### Generating Module File
_generate_module_cpp(example
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(example_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(example_generate_messages example_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xuplin/test/src/example/msg/answer.msg" NAME_WE)
add_dependencies(example_generate_messages_cpp _example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_gencpp)
add_dependencies(example_gencpp example_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(example
  "/home/xuplin/test/src/example/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example
)

### Generating Services

### Generating Module File
_generate_module_eus(example
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(example_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(example_generate_messages example_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xuplin/test/src/example/msg/answer.msg" NAME_WE)
add_dependencies(example_generate_messages_eus _example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_geneus)
add_dependencies(example_geneus example_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(example
  "/home/xuplin/test/src/example/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example
)

### Generating Services

### Generating Module File
_generate_module_lisp(example
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(example_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(example_generate_messages example_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xuplin/test/src/example/msg/answer.msg" NAME_WE)
add_dependencies(example_generate_messages_lisp _example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_genlisp)
add_dependencies(example_genlisp example_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(example
  "/home/xuplin/test/src/example/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example
)

### Generating Services

### Generating Module File
_generate_module_nodejs(example
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(example_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(example_generate_messages example_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xuplin/test/src/example/msg/answer.msg" NAME_WE)
add_dependencies(example_generate_messages_nodejs _example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_gennodejs)
add_dependencies(example_gennodejs example_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(example
  "/home/xuplin/test/src/example/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example
)

### Generating Services

### Generating Module File
_generate_module_py(example
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(example_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(example_generate_messages example_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xuplin/test/src/example/msg/answer.msg" NAME_WE)
add_dependencies(example_generate_messages_py _example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_genpy)
add_dependencies(example_genpy example_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(example_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(example_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(example_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(example_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(example_generate_messages_py std_msgs_generate_messages_py)
endif()
