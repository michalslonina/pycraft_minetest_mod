-- unit tests using busted
-- based on https://rubenwardy.com/minetest_modding_book/en/quality/unit_testing.html

-- Look for required things in
package.path = "../?.lua;" .. package.path

_G.minetest = {}
minetest.registered_nodes = {}

-- Define the mock functions
function minetest.get_current_modname()
    return "something"
end
function minetest.get_modpath()
    return "some/path"
end
function minetest.register_globalstep(f)
    minetest.globalstep = f
end
function minetest.register_on_shutdown(f)
end
function minetest.register_on_joinplayer(f)
end
function minetest.register_on_leaveplayer(f)
end
function minetest.register_on_punchnode(f)
end
function minetest.register_chatcommand(f)
end
function minetest.register_on_chat_message(f)
end

_G.Settings = {}
Settings.__index = Settings
setmetatable(Settings, {
    __call = function (cls, ...)
        return cls.new(...)
    end,
})
function Settings.get(self,field)
    print("get", field)
    return self.vars[field]
end
function Settings:get_bool(field)
    print("get_bool", field)
    return self.vars[field]
end
function Settings:set(field, value)
    print("set", field, value)
    self.vars[field] = value
    return
end
function Settings.new(filepath)
    local self = setmetatable({}, MyClass)
    self.filepath = filepath
    self.vars = {}
    self.vars["python"]  = "python"
    self.vars["restrict_to_local_connections"] = true
    self.vars["support_websockets"] = true
    self.get=Settings.get
    self.get_bool=Settings.get_bool
    self.set=Settings.set
    return self
end

mod = require("init")

describe("simple", function()
    it("test", function()
        minetest.globalstep(1)
--         assert.equals(0,  some-call)
    end)
end)
