add_executable(app app.cpp)
target_compile_features(app PRIVATE cxx_std_17)
target_include_directories(app PRIVATE ${CMAKE_SOURCE_DIR}/milo/tensor/include)
target_link_libraries(
  app PRIVATE /home/nhoos/work_space/MILO/milo/build/milo/tensor/libtensor.a
              fmt::fmt)
