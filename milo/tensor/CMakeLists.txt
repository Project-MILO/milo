cmake_minimum_required(VERSION 3.14)
project(tensor)
add_library(tensor src/tensor.cpp)
target_include_directories(tensor PRIVATE include)
