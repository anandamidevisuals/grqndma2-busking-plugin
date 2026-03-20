-- Configuration file for Albatross Rock Show Busking System

local config = {
    fixture_counts = {
        spotlights = 10,
        wash_lights = 8,
        strobes = 5,
        lasers = 2,
    },
    group_names = {
        main_stage = "Main Stage",
        side_stage = "Side Stage",
        ambient_lights = "Ambient Lights",
    },
    color_presets = {
        warm_white = {r = 255, g = 220, b = 185},
        cool_white = {r = 255, g = 255, b = 255},
        red = {r = 255, g = 0, b = 0},
        green = {r = 0, g = 255, b = 0},
        blue = {r = 0, g = 0, b = 255},
    },
    position_presets = {
        front_row = {x = 0, y = 0, z = 10},
        mid_stage = {x = 0, y = 0, z = 5},
        back_row = {x = 0, y = 0, z = 0},
    },
    effect_definitions = {
        fade = {duration = 1, easing = "linear"},
        pulse = {duration = 0.5, easing = "ease-in-out"},
        strobe = {duration = 0.1, frequency = 10},
    }
}

return config