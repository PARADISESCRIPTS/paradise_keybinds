local Keybinds = {}

function RegisterKeybind(name, description, defaultKey, callback)
    if not name or not description or not callback then
        print("^1[ERROR]^7 Invalid parameters for RegisterKeybind")
        return
    end

    local keybind = {
        name = name,
        description = description,
        defaultKey = defaultKey,
        callback = callback,
        currentKey = defaultKey
    }

    Keybinds[name] = keybind
    RegisterCommand(name, function()
        callback()
    end, false)

    RegisterKeyMapping(name, description, 'keyboard', defaultKey)
end

function GetKeybinds()
    return Keybinds
end

exports('RegisterKeybind', RegisterKeybind)
exports('GetKeybinds', GetKeybinds)

-- Example usage:

-- exports['paradise_keybinds']:RegisterKeybind('test_bind', 'Test Keybind', 'F3', function()
--     print('Test keybind pressed!')
-- end)
