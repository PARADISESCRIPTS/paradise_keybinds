# Paradise Keybinds

A lightweight and standalone keybinding system for FiveM that can be integrated with any resource.

## Features

- Simple and easy-to-use keybinding system
- Support for FiveM's native key mapping
- Register custom keybinds from any resource
- No configuration needed - just plug and play

## Usage

To register a keybind in your resource:

```lua
-- In your client script
exports['paradise_keybinds']:RegisterKeybind('your_bind_name', 'Description of the keybind', 'F1', function()
    -- Your code here
    print('Keybind pressed!')
end)
```

### Parameters

- `name` (string): Unique identifier for the keybind
- `description` (string): Description shown in FiveM settings
- `defaultKey` (string): Default key for the bind (e.g., 'F1', 'E', 'G')
- `callback` (function): Function to execute when the key is pressed

### Example Implementations

#### Simple Keybind
```lua
exports['paradise_keybinds']:RegisterKeybind('open_menu', 'Open Menu', 'F1', function()
    -- Open your menu here
    print('Menu opened!')
end)
```

#### Vehicle Keybind
```lua
exports['paradise_keybinds']:RegisterKeybind('lock_vehicle', 'Lock/Unlock Vehicle', 'L', function()
    local playerPed = PlayerPedId()
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        -- Your vehicle lock logic here
    end
end)
```

## Notes

- Keybinds can be customized by players in the FiveM settings
- The system uses FiveM's native key mapping system
- Each keybind must have a unique name
- The callback function runs on the client side

## Support

For support or questions, please contact the resource author.

## License

This resource is free to use and modify for your server. 