require "keybow"
require "snippets/mac_snippets"

-- Keybow MINI --

function setup()
    keybow.use_mini()
    keybow.auto_lights(false)
    keybow.clear_lights()
end

-- Key mappings --
-- microsoft teams - https://support.office.com/en-us/article/keyboard-shortcuts-for-microsoft-teams-2e8e2a70-e8d8-4a19-949b-4c36dd5292d2#PickTab=macOS --
-- mute toggle is Command+Shift+M --

function handle_minikey_00(pressed)
-- keybow.set_key("1", pressed) --
-- red --
    if pressed then
        keybow.set_pixel(0, 255, 0, 0)
        mac_snippets.spotlight("chrome")
    else
        keybow.set_pixel(0, 0, 0, 0)
    end
end

function handle_minikey_01(pressed)
-- keybow.set_key("1", pressed)
-- green
    if pressed then
        keybow.set_pixel(1, 0, 255, 0)
        mac_snippets.spotlight("teams.app")
        keybow.set_modifier(keybow.LEFT_META, keybow.KEY_DOWN, keybow.LEFT_SHIFT)
        keybow.tap_key("M", pressed)
        keybow.set_modifier(keybow.LEFT_META, keybow.KEY_UP)
    else
        keybow.set_pixel(1, 0, 0, 0)
    end
end

function handle_minikey_02(pressed)
-- keybow.set_key("2", pressed)
-- blue
-- spotify mute

    if pressed then
        keybow.set_pixel(2, 0, 0, 255)
        mac_snippets.spotlight("spotify.app")
        keybow.tap_space()
    else
        keybow.set_pixel(2, 0, 0, 0)
    end
end
