install: $(INST_LUADIR)/isodd.lua

$(INST_LUADIR)/isodd.lua: make-isodd.lua
	$(LUA) $^ > $@