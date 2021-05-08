# Install FetchContent if CMake version < 3.14
macro(FetchContent_MakeAvailable name)
  FetchContent_GetProperties(${NAME})
  if(NOT ${NAME}_POPULATED)
    FetchContent_Populate(${NAME})
    add_subdirectory(${${NAME}_SOURCE_DIR} ${${NAME}_BINARY_DIR})
  endif()
endmacro()
