// Copyright 2021 ProjectMILO"

#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>
#include <milo/lib.hpp>

TEST_CASE("Quick check", "[main]") {
  REQUIRE(2.0 == 2.0);
  REQUIRE(4.6666 == Approx(4.666666));
}
