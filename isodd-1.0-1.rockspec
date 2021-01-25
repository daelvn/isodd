   package = "isodd"
   version = "1.0-1"
   source = {
      url = "http://github.com/daelvn/isodd"
   }
   build = {
      type = "make",
      build_variables = {
         LUA="$(LUA)",
      },
      install_variables = {
         INST_PREFIX="$(PREFIX)",
         INST_LUADIR="$(LUADIR)",
      },
   }