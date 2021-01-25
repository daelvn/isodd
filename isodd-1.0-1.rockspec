   package = "isodd"
   version = "1.0-1"
   source = {
      url = "http://github.com/daelvn/isodd"
   }
   description = {
     summary = "checks if a number is odd or not",
     detailed = [[
       Do you struggle telling apart the odd numbers from the filthy evens? Are you a devout follower of the latest innovations in tech? Do you find 15 second loading times normal? Are you reading this with a commercial voice? Then this is the right library for you!

ISODD:tm: uses the ***LATEST*** \[innovations\](link or sth idk man) in the field of odd numbers. Every number EVER is stored INDIVIDUALLY to give blazing FAST results, IMMEDIATELY. RIGHT NOW. INSTANTLY. It integrates with WEB TECHNOLOGY that everybody loves to bring you the GREATEST POSSIBLE EXPERIENCE in the field of ODD NUMBERS. Everything is simply BLEEDING EDGE. Not even Google or NASA can come up with a library like this. This is the library of GODS.
     ]],
     homepage = "https://github.com/daelvn/isodd",
     issues_url = "https://github.com/daelvn/isodd/issues"
     license = "SUPER LICENSED!!!!!! DO NOT STEAL"
   }
   build = {
      type = "make",
      build_variables = {
         LUA="$(LUA)",
         INST_PREFIX="$(PREFIX)",
         INST_LUADIR="$(LUADIR)",
         CFLAGS="$(CFLAGS)"
      },
      install_variables = {
         LUA="$(LUA)",
         INST_PREFIX="$(PREFIX)",
         INST_LUADIR="$(LUADIR)",
      },
   }