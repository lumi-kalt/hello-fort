add_rules("mode.debug", "mode.release")

target("hello")
    set_kind("binary")
    add_files("src/*.f90")
    set_optimize("fastest")
    set_options("-Wall -Wextra -Wpedantic -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function")
