ESX = nil
ESX = exports["es_extended"]:getSharedObject()


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- FUNCTIONS ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

lib.locale()
Keys = { -- Who doesnt love a big old table of keys.
    [","] = 82,
    ["-"] = 84,
    ["."] = 81,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["="] = 83,
    ["["] = 39,
    ["]"] = 40,
    ["A"] = 34,
    ["B"] = 29,
    ["BACKSPACE"] = 177,
    ["C"] = 26,
    ["CAPS"] = 137,
    ["D"] = 9,
    ["DELETE"] = 178,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["E"] = 38,
    ["ENTER"] = 18,
    ["ESC"] = 322,
    ["F"] = 23,
    ["F1"] = 288,
    ["F10"] = 57,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["G"] = 47,
    ["H"] = 74,
    ["HOME"] = 213,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFT"] = 174,
    ["LEFTALT"] = 19,
    ["LEFTCTRL"] = 36,
    ["LEFTSHIFT"] = 21,
    ["M"] = 244,
    ["N"] = 249,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118,
    ["NENTER"] = 201,
    ["P"] = 199,
    ["PAGEDOWN"] = 11,
    ["PAGEUP"] = 10,
    ["Q"] = 44,
    ["R"] = 45,
    ["RIGHT"] = 175,
    ["RIGHTCTRL"] = 70,
    ["S"] = 8,
    ["SPACE"] = 22,
    ["T"] = 245,
    ["TAB"] = 37,
    ["TOP"] = 27,
    ["U"] = 303,
    ["V"] = 0,
    ["W"] = 32,
    ["X"] = 73,
    ["Y"] = 246,
    ["Z"] = 20,
    ["~"] = 243,
}


RegisterNetEvent('pfmd_clothing:notify', function(message)
    lib.notify({
        id = 'some_identifier',
        title = message,
        description = '',
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#C1C2C5',
            ['.description'] = {
                color = '#909296'
            }
        },
        icon = 'info',
        iconColor = '#C53030'
    })
end)



function IncurCooldown(ms)
    Citizen.CreateThread(function()
        Cooldown = true
        Wait(ms)
        Cooldown = false
    end)
end

function FirstUpper(str)
    return (str:gsub("^%l", string.upper))
end

function Notify(message) -- However you want your notifications to be shown, you can switch it up here.
    TriggerEvent('pfmd_clothing:notify', message)
end

function IsMpPed(ped)
    local Male = GetHashKey("mp_m_freemode_01")
    local Female = GetHashKey("mp_f_freemode_01")
    local CurrentModel = GetEntityModel(ped)
    if CurrentModel == Male then return "Male" elseif CurrentModel == Female then return "Female" else return false end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- Variations ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





function AddNewVariation(which, gender, one, two, single)
    local Where = Variations[which][gender]
    if not single then
        Where[one] = two
        Where[two] = one
    else
        Where[one] = two
    end
end

Citizen.CreateThread(function()
    -- Male Visor/Hat Variations
    AddNewVariation("Visor", "Male", 9, 10)
    AddNewVariation("Visor", "Male", 18, 67)
    AddNewVariation("Visor", "Male", 82, 67)
    AddNewVariation("Visor", "Male", 44, 45)
    AddNewVariation("Visor", "Male", 50, 68)
    AddNewVariation("Visor", "Male", 51, 69)
    AddNewVariation("Visor", "Male", 52, 70)
    AddNewVariation("Visor", "Male", 53, 71)
    AddNewVariation("Visor", "Male", 62, 72)
    AddNewVariation("Visor", "Male", 65, 66)
    AddNewVariation("Visor", "Male", 73, 74)
    AddNewVariation("Visor", "Male", 76, 77)
    AddNewVariation("Visor", "Male", 79, 78)
    AddNewVariation("Visor", "Male", 80, 81)
    AddNewVariation("Visor", "Male", 91, 92)
    AddNewVariation("Visor", "Male", 104, 105)
    AddNewVariation("Visor", "Male", 109, 110)
    AddNewVariation("Visor", "Male", 116, 117)
    AddNewVariation("Visor", "Male", 118, 119)
    AddNewVariation("Visor", "Male", 123, 124)
    AddNewVariation("Visor", "Male", 125, 126)
    AddNewVariation("Visor", "Male", 127, 128)
    AddNewVariation("Visor", "Male", 130, 131)
    -- Female Visor/Hat Variations
    AddNewVariation("Visor", "Female", 43, 44)
    AddNewVariation("Visor", "Female", 49, 67)
    AddNewVariation("Visor", "Female", 64, 65)
    AddNewVariation("Visor", "Female", 65, 64)
    AddNewVariation("Visor", "Female", 51, 69)
    AddNewVariation("Visor", "Female", 50, 68)
    AddNewVariation("Visor", "Female", 52, 70)
    AddNewVariation("Visor", "Female", 62, 71)
    AddNewVariation("Visor", "Female", 72, 73)
    AddNewVariation("Visor", "Female", 75, 76)
    AddNewVariation("Visor", "Female", 78, 77)
    AddNewVariation("Visor", "Female", 79, 80)
    AddNewVariation("Visor", "Female", 18, 66)
    AddNewVariation("Visor", "Female", 66, 81)
    AddNewVariation("Visor", "Female", 81, 66)
    AddNewVariation("Visor", "Female", 86, 84)
    AddNewVariation("Visor", "Female", 90, 91)
    AddNewVariation("Visor", "Female", 103, 104)
    AddNewVariation("Visor", "Female", 108, 109)
    AddNewVariation("Visor", "Female", 115, 116)
    AddNewVariation("Visor", "Female", 117, 118)
    AddNewVariation("Visor", "Female", 122, 123)
    AddNewVariation("Visor", "Female", 124, 125)
    AddNewVariation("Visor", "Female", 126, 127)
    AddNewVariation("Visor", "Female", 129, 130)
    -- Male Bags
    AddNewVariation("Bags", "Male", 45, 44)
    AddNewVariation("Bags", "Male", 41, 40)
    -- Female Bags
    AddNewVariation("Bags", "Female", 45, 44)
    AddNewVariation("Bags", "Female", 41, 40)
    -- Male Hair
    AddNewVariation("Hair", "Male", 7, 15, true)
    AddNewVariation("Hair", "Male", 43, 15, true)
    AddNewVariation("Hair", "Male", 9, 43, true)
    AddNewVariation("Hair", "Male", 11, 43, true)
    AddNewVariation("Hair", "Male", 15, 43, true)
    AddNewVariation("Hair", "Male", 16, 43, true)
    AddNewVariation("Hair", "Male", 17, 43, true)
    AddNewVariation("Hair", "Male", 20, 43, true)
    AddNewVariation("Hair", "Male", 22, 43, true)
    AddNewVariation("Hair", "Male", 45, 43, true)
    AddNewVariation("Hair", "Male", 47, 43, true)
    AddNewVariation("Hair", "Male", 49, 43, true)
    AddNewVariation("Hair", "Male", 51, 43, true)
    AddNewVariation("Hair", "Male", 52, 43, true)
    AddNewVariation("Hair", "Male", 53, 43, true)
    AddNewVariation("Hair", "Male", 56, 43, true)
    AddNewVariation("Hair", "Male", 58, 43, true)
    -- Female Hair
    AddNewVariation("Hair", "Female", 1, 49, true)
    AddNewVariation("Hair", "Female", 2, 49, true)
    AddNewVariation("Hair", "Female", 7, 49, true)
    AddNewVariation("Hair", "Female", 9, 49, true)
    AddNewVariation("Hair", "Female", 10, 49, true)
    AddNewVariation("Hair", "Female", 11, 48, true)
    AddNewVariation("Hair", "Female", 14, 53, true)
    AddNewVariation("Hair", "Female", 15, 42, true)
    AddNewVariation("Hair", "Female", 21, 42, true)
    AddNewVariation("Hair", "Female", 23, 42, true)
    AddNewVariation("Hair", "Female", 31, 53, true)
    AddNewVariation("Hair", "Female", 39, 49, true)
    AddNewVariation("Hair", "Female", 40, 49, true)
    AddNewVariation("Hair", "Female", 42, 53, true)
    AddNewVariation("Hair", "Female", 45, 49, true)
    AddNewVariation("Hair", "Female", 48, 49, true)
    AddNewVariation("Hair", "Female", 49, 48, true)
    AddNewVariation("Hair", "Female", 52, 53, true)
    AddNewVariation("Hair", "Female", 53, 42, true)
    AddNewVariation("Hair", "Female", 54, 55, true)
    AddNewVariation("Hair", "Female", 59, 42, true)
    AddNewVariation("Hair", "Female", 59, 54, true)
    AddNewVariation("Hair", "Female", 68, 53, true)
    AddNewVariation("Hair", "Female", 76, 48, true)
    -- Male Top/Jacket Variations
    AddNewVariation("Jackets", "Male", 29, 30)
    AddNewVariation("Jackets", "Male", 31, 32)
    AddNewVariation("Jackets", "Male", 42, 43)
    AddNewVariation("Jackets", "Male", 68, 69)
    AddNewVariation("Jackets", "Male", 74, 75)
    AddNewVariation("Jackets", "Male", 87, 88)
    AddNewVariation("Jackets", "Male", 99, 100)
    AddNewVariation("Jackets", "Male", 101, 102)
    AddNewVariation("Jackets", "Male", 103, 104)
    AddNewVariation("Jackets", "Male", 126, 127)
    AddNewVariation("Jackets", "Male", 129, 130)
    AddNewVariation("Jackets", "Male", 184, 185)
    AddNewVariation("Jackets", "Male", 188, 189)
    AddNewVariation("Jackets", "Male", 194, 195)
    AddNewVariation("Jackets", "Male", 196, 197)
    AddNewVariation("Jackets", "Male", 198, 199)
    AddNewVariation("Jackets", "Male", 200, 203)
    AddNewVariation("Jackets", "Male", 202, 205)
    AddNewVariation("Jackets", "Male", 206, 207)
    AddNewVariation("Jackets", "Male", 210, 211)
    AddNewVariation("Jackets", "Male", 217, 218)
    AddNewVariation("Jackets", "Male", 229, 230)
    AddNewVariation("Jackets", "Male", 232, 233)
    AddNewVariation("Jackets", "Male", 251, 253)
    AddNewVariation("Jackets", "Male", 256, 261)
    AddNewVariation("Jackets", "Male", 262, 263)
    AddNewVariation("Jackets", "Male", 265, 266)
    AddNewVariation("Jackets", "Male", 267, 268)
    AddNewVariation("Jackets", "Male", 279, 280)
    -- Female Top/Jacket Variations
    AddNewVariation("Jackets", "Female", 53, 52)
    AddNewVariation("Jackets", "Female", 57, 58)
    AddNewVariation("Jackets", "Female", 62, 63)
    AddNewVariation("Jackets", "Female", 90, 91)
    AddNewVariation("Jackets", "Female", 92, 93)
    AddNewVariation("Jackets", "Female", 94, 95)
    AddNewVariation("Jackets", "Female", 187, 186)
    AddNewVariation("Jackets", "Female", 190, 191)
    AddNewVariation("Jackets", "Female", 196, 197)
    AddNewVariation("Jackets", "Female", 198, 199)
    AddNewVariation("Jackets", "Female", 200, 201)
    AddNewVariation("Jackets", "Female", 202, 205)
    AddNewVariation("Jackets", "Female", 204, 207)
    AddNewVariation("Jackets", "Female", 210, 211)
    AddNewVariation("Jackets", "Female", 214, 215)
    AddNewVariation("Jackets", "Female", 227, 228)
    AddNewVariation("Jackets", "Female", 239, 240)
    AddNewVariation("Jackets", "Female", 242, 243)
    AddNewVariation("Jackets", "Female", 259, 261)
    AddNewVariation("Jackets", "Female", 265, 270)
    AddNewVariation("Jackets", "Female", 271, 272)
    AddNewVariation("Jackets", "Female", 274, 275)
    AddNewVariation("Jackets", "Female", 276, 277)
    AddNewVariation("Jackets", "Female", 292, 293)
end)


Variations = {
    Jackets = { Male = {}, Female = {} },
    Hair = { Male = {}, Female = {} },
    Bags = { Male = {}, Female = {} },
    Visor = { Male = {}, Female = {} },
    Gloves = {
        Male = {
            [16] = 4,
            [17] = 4,
            [18] = 4,
            [19] = 0,
            [20] = 1,
            [21] = 2,
            [22] = 4,
            [23] = 5,
            [24] = 6,
            [25] = 8,
            [26] = 11,
            [27] = 12,
            [28] = 14,
            [29] = 15,
            [30] = 0,
            [31] = 1,
            [32] = 2,
            [33] = 4,
            [34] = 5,
            [35] = 6,
            [36] = 8,
            [37] = 11,
            [38] = 12,
            [39] = 14,
            [40] = 15,
            [41] = 0,
            [42] = 1,
            [43] = 2,
            [44] = 4,
            [45] = 5,
            [46] = 6,
            [47] = 8,
            [48] = 11,
            [49] = 12,
            [50] = 14,
            [51] = 15,
            [52] = 0,
            [53] = 1,
            [54] = 2,
            [55] = 4,
            [56] = 5,
            [57] = 6,
            [58] = 8,
            [59] = 11,
            [60] = 12,
            [61] = 14,
            [62] = 15,
            [63] = 0,
            [64] = 1,
            [65] = 2,
            [66] = 4,
            [67] = 5,
            [68] = 6,
            [69] = 8,
            [70] = 11,
            [71] = 12,
            [72] = 14,
            [73] = 15,
            [74] = 0,
            [75] = 1,
            [76] = 2,
            [77] = 4,
            [78] = 5,
            [79] = 6,
            [80] = 8,
            [81] = 11,
            [82] = 12,
            [83] = 14,
            [84] = 15,
            [85] = 0,
            [86] = 1,
            [87] = 2,
            [88] = 4,
            [89] = 5,
            [90] = 6,
            [91] = 8,
            [92] = 11,
            [93] = 12,
            [94] = 14,
            [95] = 15,
            [96] = 4,
            [97] = 4,
            [98] = 4,
            [99] = 0,
            [100] = 1,
            [101] = 2,
            [102] = 4,
            [103] = 5,
            [104] = 6,
            [105] = 8,
            [106] = 11,
            [107] = 12,
            [108] = 14,
            [109] = 15,
            [110] = 4,
            [111] = 4,
            [115] = 112,
            [116] = 112,
            [117] = 112,
            [118] = 112,
            [119] = 112,
            [120] = 112,
            [121] = 112,
            [122] = 113,
            [123] = 113,
            [124] = 113,
            [125] = 113,
            [126] = 113,
            [127] = 113,
            [128] = 113,
            [129] = 114,
            [130] = 114,
            [131] = 114,
            [132] = 114,
            [133] = 114,
            [134] = 114,
            [135] = 114,
            [136] = 15,
            [137] = 15,
            [138] = 0,
            [139] = 1,
            [140] = 2,
            [141] = 4,
            [142] = 5,
            [143] = 6,
            [144] = 8,
            [145] = 11,
            [146] = 12,
            [147] = 14,
            [148] = 112,
            [149] = 113,
            [150] = 114,
            [151] = 0,
            [152] = 1,
            [153] = 2,
            [154] = 4,
            [155] = 5,
            [156] = 6,
            [157] = 8,
            [158] = 11,
            [159] = 12,
            [160] = 14,
            [161] = 112,
            [162] = 113,
            [163] = 114,
            [165] = 4,
            [166] = 4,
            [167] = 4,
        },
        Female = {
            [16] = 11,
            [17] = 3,
            [18] = 3,
            [19] = 3,
            [20] = 0,
            [21] = 1,
            [22] = 2,
            [23] = 3,
            [24] = 4,
            [25] = 5,
            [26] = 6,
            [27] = 7,
            [28] = 9,
            [29] = 11,
            [30] = 12,
            [31] = 14,
            [32] = 15,
            [33] = 0,
            [34] = 1,
            [35] = 2,
            [36] = 3,
            [37] = 4,
            [38] = 5,
            [39] = 6,
            [40] = 7,
            [41] = 9,
            [42] = 11,
            [43] = 12,
            [44] = 14,
            [45] = 15,
            [46] = 0,
            [47] = 1,
            [48] = 2,
            [49] = 3,
            [50] = 4,
            [51] = 5,
            [52] = 6,
            [53] = 7,
            [54] = 9,
            [55] = 11,
            [56] = 12,
            [57] = 14,
            [58] = 15,
            [59] = 0,
            [60] = 1,
            [61] = 2,
            [62] = 3,
            [63] = 4,
            [64] = 5,
            [65] = 6,
            [66] = 7,
            [67] = 9,
            [68] = 11,
            [69] = 12,
            [70] = 14,
            [71] = 15,
            [72] = 0,
            [73] = 1,
            [74] = 2,
            [75] = 3,
            [76] = 4,
            [77] = 5,
            [78] = 6,
            [79] = 7,
            [80] = 9,
            [81] = 11,
            [82] = 12,
            [83] = 14,
            [84] = 15,
            [85] = 0,
            [86] = 1,
            [87] = 2,
            [88] = 3,
            [89] = 4,
            [90] = 5,
            [91] = 6,
            [92] = 7,
            [93] = 9,
            [94] = 11,
            [95] = 12,
            [96] = 14,
            [97] = 15,
            [98] = 0,
            [99] = 1,
            [100] = 2,
            [101] = 3,
            [102] = 4,
            [103] = 5,
            [104] = 6,
            [105] = 7,
            [106] = 9,
            [107] = 11,
            [108] = 12,
            [109] = 14,
            [110] = 15,
            [111] = 3,
            [112] = 3,
            [113] = 3,
            [114] = 0,
            [115] = 1,
            [116] = 2,
            [117] = 3,
            [118] = 4,
            [119] = 5,
            [120] = 6,
            [121] = 7,
            [122] = 9,
            [123] = 11,
            [124] = 12,
            [125] = 14,
            [126] = 15,
            [127] = 3,
            [128] = 3,
            [132] = 129,
            [133] = 129,
            [134] = 129,
            [135] = 129,
            [136] = 129,
            [137] = 129,
            [138] = 129,
            [139] = 130,
            [140] = 130,
            [141] = 130,
            [142] = 130,
            [143] = 130,
            [144] = 130,
            [145] = 130,
            [146] = 131,
            [147] = 131,
            [148] = 131,
            [149] = 131,
            [150] = 131,
            [151] = 131,
            [152] = 131,
            [154] = 153,
            [155] = 153,
            [156] = 153,
            [157] = 153,
            [158] = 153,
            [159] = 153,
            [160] = 153,
            [162] = 161,
            [163] = 161,
            [164] = 161,
            [165] = 161,
            [166] = 161,
            [167] = 161,
            [168] = 161,
            [169] = 15,
            [170] = 15,
            [171] = 0,
            [172] = 1,
            [173] = 2,
            [174] = 3,
            [175] = 4,
            [176] = 5,
            [177] = 6,
            [178] = 7,
            [179] = 9,
            [180] = 11,
            [181] = 12,
            [182] = 14,
            [183] = 129,
            [184] = 130,
            [185] = 131,
            [186] = 153,
            [187] = 0,
            [188] = 1,
            [189] = 2,
            [190] = 3,
            [191] = 4,
            [192] = 5,
            [193] = 6,
            [194] = 7,
            [195] = 9,
            [196] = 11,
            [197] = 12,
            [198] = 14,
            [199] = 129,
            [200] = 130,
            [201] = 131,
            [202] = 153,
            [203] = 161,
            [204] = 161,
            [206] = 3,
            [207] = 3,
            [208] = 3,
        }
    }
}





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- OTHER ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------









local PlayerData = {}
local currentwalkingstyle = 'default'

RegisterNetEvent('walk:open')
AddEventHandler('walk:open', function()
    OpenWalkMenu()
end)
function OpenWalkMenu()
    local options = {}

    for k, v in pairs(Config.Styles) do
        table.insert(options, {
            title = v.label,
            event = "esx-walkstyles:setwalkstyle",
            args = v.value
        })
    end

    lib.registerContext({
        id = 'walkmenu',
        title = 'Choose Walk Style',
        options = options
    })

    lib.showContext('walkmenu')
end

RegisterNetEvent('esx-walkstyles:setwalkstyle')
AddEventHandler('esx-walkstyles:setwalkstyle', function(anim)
    currentwalkingstyle = anim
    setwalkstyle(anim)
    TriggerServerEvent('pfmd_animations:stylchodzeniaserver', 'update', anim)
end)

function setwalkstyle(anim)
    local playerped = PlayerPedId()

    if anim == 'default' then
        ResetPedMovementClipset(playerped)
        ResetPedWeaponMovementClipset(playerped)
        ResetPedStrafeClipset(playerped)
    else
        RequestAnimSet(anim)
        while not HasAnimSetLoaded(anim) do Citizen.Wait(0) end
        SetPedMovementClipset(playerped, anim)
        ResetPedWeaponMovementClipset(playerped)
        ResetPedStrafeClipset(playerped)
    end
end

RegisterNetEvent('pfmd_animations:stylchodzeniaclient')
AddEventHandler('pfmd_animations:stylchodzeniaclient', function(walkstyle)
    setwalkstyle(walkstyle)
    currentwalkingstyle = walkstyle
end)






------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- MAIN MENU ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



local Drawables = {
    ["Top"] = {
        Drawable = 11,
        Table = Variations.Jackets,
        Emote = { Dict = "missmic4", Anim = "michael_tux_fidget", Move = 51, Dur = 1500 }
    },
    ["Gloves"] = {
        Drawable = 3,
        Table = Variations.Gloves,
        Remember = true,
        Emote = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 }
    },
    ["Shoes"] = {
        Drawable = 6,
        Table = { Standalone = true, Male = 49, Female = 46 },
        Emote = { Dict = "random@domestic", Anim = "pickup_low", Move = 0, Dur = 1200 }
    },
    ["Neck"] = {
        Drawable = 7,
        Table = { Standalone = true, Male = 0, Female = 0 },
        Emote = { Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Dur = 2100 }
    },
    ["Vest"] = {
        Drawable = 9,
        Table = { Standalone = true, Male = 0, Female = 0 },
        Emote = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200 }
    },
    ["Bag"] = {
        Drawable = 5,
        Table = Variations.Bags,
        Emote = { Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Dur = 1600 }
    },
    ["Mask"] = {
        Drawable = 1,
        Table = { Standalone = true, Male = 0, Female = 0 },
        Emote = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 800 }
    },
    ["Hair"] = {
        Drawable = 2,
        Table = Variations.Hair,
        Remember = true,
        Emote = { Dict = "clothingtie", Anim = "check_out_a", Move = 51, Dur = 2000 }
    },
}

local Extras = {
    ["Shirt"] = {
        Drawable = 11,
        Table = {
            Standalone = true,
            Male = -1,
            Female = -1,
            Extra = {
                { Drawable = 8,  Id = 15, Tex = 0, Name = "Extra Undershirt" },
                { Drawable = 3,  Id = 15, Tex = 0, Name = "Extra Gloves" },
                { Drawable = 10, Id = 0,  Tex = 0, Name = "Extra Decals" },
            }
        },
        Emote = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200 }
    },
    ["Pants"] = {
        Drawable = 4,
        Table = { Standalone = true, Male = 55, Female = 15 },
        Emote = { Dict = "re@construction", Anim = "out_of_breath", Move = 51, Dur = 1300 }
    },
    ["Bagoff"] = {
        Drawable = 5,
        Table = { Standalone = true, Male = 0, Female = 0 },
        Emote = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200 }
    },
}

local Props = {
    ["Visor"] = {
        Prop = 0,
        Variants = Variations.Visor,
        Emote = {
            On = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600 },
            Off = { Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200 }
        }
    },
    ["Hat"] = {
        Prop = 0,
        Emote = {
            On = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600 },
            Off = { Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200 }
        }
    },
    ["Glasses"] = {
        Prop = 1,
        Emote = {
            On = { Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400 },
            Off = { Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400 }
        }
    },
    ["Ear"] = {
        Prop = 2,
        Emote = {
            On = { Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900 },
            Off = { Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900 }
        }
    },
    ["Watch"] = {
        Prop = 6,
        Emote = {
            On = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 },
            Off = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 }
        }
    },
    ["Bracelet"] = {
        Prop = 7,
        Emote = {
            On = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 },
            Off = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 }
        }
    },
}

LastEquipped = {}
Cooldown = false

local function PlayToggleEmote(e, cb)
    local Ped = PlayerPedId()
    while not HasAnimDictLoaded(e.Dict) do
        RequestAnimDict(e.Dict)
        Wait(100)
    end
    if IsPedInAnyVehicle(Ped) then e.Move = 51 end
    TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, e.Dur, e.Move, 0, false, false, false)
    local Pause = e.Dur - 500
    if Pause < 500 then Pause = 500 end
    IncurCooldown(Pause)
    Wait(Pause) -- Lets wait for the emote to play for a bit then do the callback.
    cb()
end

function ResetClothing(anim)
    local Ped = PlayerPedId()
    local e = Drawables.Top.Emote
    if anim then TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, 3000, e.Move, 0, false, false, false) end
    for k, v in pairs(LastEquipped) do
        if v then
            if v.Drawable then
                SetPedComponentVariation(Ped, v.Id, v.Drawable, v.Texture, 0)
            elseif v.Prop then
                ClearPedProp(Ped, v.Id)
                SetPedPropIndex(Ped, v.Id, v.Prop, v.Texture, true)
            end
        end
    end
    LastEquipped = {}
end

function ToggleClothing(which, extra)
    if Cooldown then return end
    local Toggle = Drawables[which]
    if extra then Toggle = Extras[which] end
    local Ped = PlayerPedId()
    local Cur = { -- Lets check what we are currently wearing.
        Drawable = GetPedDrawableVariation(Ped, Toggle.Drawable),
        Id = Toggle.Drawable,
        Ped = Ped,
        Texture = GetPedTextureVariation(Ped, Toggle.Drawable),
    }
    local Gender = IsMpPed(Ped)
    if which ~= "Mask" then
        if not Gender then
            Notify(locale("NotAllowedPed"))
            return false
        end -- We cancel the command here if the person is not using a multiplayer model.
    end
    local Table = Toggle.Table[Gender]
    if not Toggle.Table.Standalone then -- "Standalone" is for things that dont require a variant, like the shoes just need to be switched to a specific drawable. Looking back at this i should have planned ahead, but it all works so, meh!
        for k, v in pairs(Table) do
            if not Toggle.Remember then
                if k == Cur.Drawable then
                    PlayToggleEmote(Toggle.Emote,
                        function() SetPedComponentVariation(Ped, Toggle.Drawable, v, Cur.Texture, 0) end)
                    return true
                end
            else
                if not LastEquipped[which] then
                    if k == Cur.Drawable then
                        PlayToggleEmote(Toggle.Emote,
                            function()
                                LastEquipped[which] = Cur
                                SetPedComponentVariation(Ped, Toggle.Drawable, v, Cur.Texture, 0)
                            end)
                        return true
                    end
                else
                    local Last = LastEquipped[which]
                    PlayToggleEmote(Toggle.Emote,
                        function()
                            SetPedComponentVariation(Ped, Toggle.Drawable, Last.Drawable, Last.Texture, 0)
                            LastEquipped[which] = false
                        end)
                    return true
                end
            end
        end
        Notify(locale("NoVariants"))
        return
    else
        if not LastEquipped[which] then
            if Cur.Drawable ~= Table then
                PlayToggleEmote(Toggle.Emote, function()
                    LastEquipped[which] = Cur
                    SetPedComponentVariation(Ped, Toggle.Drawable, Table, 0, 0)
                    if Toggle.Table.Extra then
                        local Extras = Toggle.Table.Extra
                        for k, v in pairs(Extras) do
                            local ExtraCur = {
                                Drawable = GetPedDrawableVariation(Ped, v.Drawable),
                                Texture =
                                    GetPedTextureVariation(Ped, v.Drawable),
                                Id = v.Drawable
                            }
                            SetPedComponentVariation(Ped, v.Drawable, v.Id, v.Tex, 0)
                            LastEquipped[v.Name] = ExtraCur
                        end
                    end
                end)
                return true
            end
        else
            local Last = LastEquipped[which]
            PlayToggleEmote(Toggle.Emote, function()
                SetPedComponentVariation(Ped, Toggle.Drawable, Last.Drawable, Last.Texture, 0)
                LastEquipped[which] = false
                if Toggle.Table.Extra then
                    local Extras = Toggle.Table.Extra
                    for k, v in pairs(Extras) do
                        if LastEquipped[v.Name] then
                            local Last = LastEquipped[v.Name]
                            SetPedComponentVariation(Ped, Last.Id, Last.Drawable, Last.Texture, 0)
                            LastEquipped[v.Name] = false
                        end
                    end
                end
            end)
            return true
        end
    end
    Notify(locale("AlreadyWearing"))
    return false
end

function ToggleProps(which)
    if Cooldown then return end
    local Prop = Props[which]
    local Ped = PlayerPedId()
    local Gender = IsMpPed(Ped)
    local Cur = { -- Lets get out currently equipped prop.
        Id = Prop.Prop,
        Ped = Ped,
        Prop = GetPedPropIndex(Ped, Prop.Prop),
        Texture = GetPedPropTextureIndex(Ped, Prop.Prop),
    }
    if not Prop.Variants then
        if Cur.Prop ~= -1 then -- If we currently are wearing this prop, remove it and save the one we were wearing into the LastEquipped table.
            PlayToggleEmote(Prop.Emote.Off, function()
                LastEquipped[which] = Cur
                ClearPedProp(Ped, Prop.Prop)
            end)
            return true
        else
            local Last = LastEquipped[which] -- Detect that we have already taken our prop off, lets put it back on.
            if Last then
                PlayToggleEmote(Prop.Emote.On,
                    function() SetPedPropIndex(Ped, Prop.Prop, Last.Prop, Last.Texture, true) end)
                LastEquipped[which] = false
                return true
            end
        end
        Notify(locale("NothingToRemove"))
        return false
    else
        local Gender = IsMpPed(Ped)
        if not Gender then
            Notify(locale("NotAllowedPed"))
            return false
        end -- We dont really allow for variants on ped models, Its possible, but im pretty sure 95% of ped models dont really have variants.
        local Variations = Prop.Variants[Gender]
        for k, v in pairs(Variations) do
            if Cur.Prop == k then
                PlayToggleEmote(Prop.Emote.On, function() SetPedPropIndex(Ped, Prop.Prop, v, Cur.Texture, true) end)
                return true
            end
        end
        Notify(locale("NoVariants"))
        return false
    end
end

RNE("clothing:start", function()
    lib.registerContext({
        id = 'start',
        title = 'CLOTHING MENU',
        menu = 'some_menu',
        options = {
            {
                title = "Walk Styles",
                description = "Choose",
                event = "walk:open",
            },
            {
                title = 'Top Part',
                description = "Choose",
                event = "test:clothing"
            },
            {
                title = "Bottom Part",
                description = "Choose",
                event = "test:clothing2",
            },
            {
                title = "Addons",
                description = "Choose",
                event = "test:clothing3",
            },
            {
                title = "Mask",
                description = "Choose",
                event = "test:16",
            },
            {
                title = "Reset Clothing",
                description = "Choose",
                event = "test:17",
            },


        }
    })

    lib.showContext('start')
end)

AddEventHandler("test:clothing", function()
    lib.registerContext({
        id = 'clothing',
        title = 'CLOTHING MENU',
        menu = 'clothing',
        options = {
            {
                title = "Hoodie",
                description = "Choose",
                event = "test:1"
            },
            {
                title = "Shirt",
                description = "Choose",
                event = "test:2"
            },
            {
                title = "Gloves",
                description = "Choose",
                event = "test:3"
            },
            {
                title = "Hat",
                description = "Choose",
                event = "test:4"
            },
            {
                title = "Hair",
                description = "Choose",
                event = "test:6"
            },
            {
                title = "Bag",
                description = "Choose",
                event = "test:12"
            },
            {
                title = "",
                description = "< Back",
                event = "clothing:start"
            }
        }
    })

    lib.showContext('clothing')
end)

AddEventHandler("test:clothing2", function()
    lib.registerContext({
        id = 'clothing2',
        title = 'CLOTHING MENU',
        menu = 'clothing2',
        options = {
            {
                title = "Shoes",
                description = "Choose",
                event = "test:13"
            },
            {
                title = "Pants",
                description = "Choose",
                event = "test:14"
            },
            {
                title = "",
                description = "< Back",
                event = "clothing:start"
            }
        }
    })

    lib.showContext('clothing2')
end)

AddEventHandler("test:clothing3", function()
    lib.registerContext({
        id = 'clothing3',
        title = 'CLOTHING MENU',
        menu = 'clothing3',
        options = {
            {
                title = "Glasses",
                description = "Choose",
                event = "test:5"
            },
            {
                title = "Earrings",
                description = "Choose",
                event = "test:7"
            },
            {
                title = "Neck",
                description = "Choose",
                event = "test:8"
            },
            {
                title = "Watch",
                description = "Choose",
                event = "test:9"
            },
            {
                title = "Bracelets",
                description = "Choose",
                event = "test:10"
            },
            {
                title = "Visor",
                description = "Choose",
                event = "test:11"
            },
            {
                title = "Body armor",
                description = "Choose",
                event = "test:15"
            },
            {
                title = "",
                description = "< Back",
                event = "clothing:start"
            }
        }
    })

    lib.showContext('clothing3')
end)
RegisterCommand('openClothingMenu', function()
    TriggerEvent('clothing:start')
end, false)

RegisterKeyMapping('openClothingMenu', 'Open Clothing Menu', 'keyboard', 'F3')

AddEventHandler("test:1", function()
    ToggleClothing("Top")
end)
AddEventHandler("test:2", function()
    ToggleClothing("Shirt", true)
end)
AddEventHandler("test:3", function()
    ToggleClothing("Gloves")
end)
AddEventHandler("test:4", function()
    ToggleProps("Hat")
end)
AddEventHandler("test:5", function()
    ToggleProps("Glasses")
end)
AddEventHandler("test:6", function()
    ToggleClothing("Hair")
    TriggerEvent("test:clothing")
end)
AddEventHandler("test:7", function()
    ToggleProps("Ear")
    TriggerEvent("test:clothing3")
end)
AddEventHandler("test:8", function()
    ToggleClothing("Neck")
    TriggerEvent("test:clothing3")
end)
AddEventHandler("test:9", function()
    ToggleProps("Watch")
    TriggerEvent("test:clothing3")
end)
AddEventHandler("test:10", function()
    ToggleProps("Bracelet")
    TriggerEvent("test:clothing3")
end)
AddEventHandler("test:11", function()
    ToggleProps("Visor")
    TriggerEvent("test:clothing3")
end)
AddEventHandler("test:12", function()
    ToggleClothing("Bag")
    TriggerEvent("test:clothing")
end)
AddEventHandler("test:13", function()
    ToggleClothing("Shoes")
end)
AddEventHandler("test:14", function()
    ToggleClothing("Pants", true)
end)
AddEventHandler("test:15", function()
    ToggleClothing("Vest")
end)
AddEventHandler("test:16", function()
    ToggleClothing("Mask")
end)
AddEventHandler("test:17", function()
    ResetClothing()
end)



AddEventHandler('onResourceStop',
    function(resource) -- Mostly for development, restart the resource and it will put all the clothes back on.
        if resource == GetCurrentResourceName() then
            ResetClothing()
        end
    end)
