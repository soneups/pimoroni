require "keybow"

-- Keybow MINI volume controls --

function setup()
    keybow.use_mini()
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 0, 255, 255)
    keybow.set_pixel(1, 255, 0, 255)
    keybow.set_pixel(2, 0, 255, 255)
end

-- Key mappings --

function handle_minikey_00(pressed)
    keybow.set_media_key(keybow.MEDIA_VOL_DOWN, pressed)
end

function handle_minikey_01(pressed)
    keybow.set_media_key(keybow.MEDIA_MUTE, pressed)
end

function handle_minikey_02(pressed)
    keybow.set_media_key(keybow.MEDIA_VOL_UP, pressed)
end
