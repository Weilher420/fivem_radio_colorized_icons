local radioStations = {
    ["RADIO_01_CLASS_ROCK"] = false,                -- "Los Santos Rock Radio"
    ["RADIO_02_POP"] = false,                       -- "Non-Stop-Pop FM"
    ["RADIO_03_HIPHOP_NEW"] = false,                -- "Radio Los Santos"
    ["RADIO_04_PUNK"] = false,                      -- "Channel X"
    ["RADIO_05_TALK_01"] = false,                   -- "West Coast Talk Radio"
    ["RADIO_06_COUNTRY"] = false,                   -- "Rebel Radio"
    ["RADIO_07_DANCE_01"] = false,                  -- "Soulwax FM"
    ["RADIO_08_MEXICAN"] = false,                   -- "East Los FM"
    ["RADIO_09_HIPHOP_OLD"] = false,                -- "West Coast Classics"
    ["RADIO_11_TALK_02"] = false,                   -- "Blaine County Radio"
    ["RADIO_12_REGGAE"] = false,                    -- "Blue Ark"
    ["RADIO_13_JAZZ"] = false,                      -- "Worldwide FM"
    ["RADIO_14_DANCE_02"] = false,                  -- "FlyLo FM"
    ["RADIO_15_MOTOWN"] = false,                    -- "The Lowdown 91.1"
    ["RADIO_16_SILVERLAKE"] = false,                -- "Radio Mirror Park"
    ["RADIO_17_FUNK"] = false,                      -- "Space 103.2"
    ["RADIO_18_90s_ROCK"] = false,                  -- "Vinewood Boulevard Radio"
    ["RADIO_19_USER"] = false,                      -- "Self Radio"
    ["RADIO_20_THELAB"] = false,                    -- "The Lab"
    ["RADIO_21_DLC_XM17"] = false,                  -- "Blonded Los Santos 97.8 FM"
    ["RADIO_22_DLC_BATTLE_MIX1_RADIO"] = false,     -- "Los Santos Underground Radio"
    ["RADIO_23_DLC_XM19_RADIO"] = false,            -- "iFruit Radio"
    ["RADIO_27_DLC_PRHEI4"] = false,                -- "Still Slipping Los Santos"
    ["RADIO_34_DLC_HEI4_KULT"] = false,             -- "Kult FM"
    ["RADIO_35_DLC_HEI4_MLR"] = false,              -- "The Music Locker"
    ["RADIO_36_AUDIOPLAYER"] = false,                -- "Media Player"
    ["RADIO_37_MOTOMAMI"] = false                   -- "MOTOMAMI Los Santos"
}

for station, enabled in pairs(radioStations) do
    LockRadioStation(station, enabled)
end

-- Media player radio :
LockRadioStationTrackList("RADIO_36_AUDIOPLAYER", "tuner_ap_silence_music")

local trackLists = {
    "tuner_ap_mix1",
    "tuner_ap_mix2",
    "tuner_ap_mix3",
    "tuner_ap_mix3_parta",
    "tuner_ap_mix3_partb",
    "tuner_ap_mix3_partc",
    "tuner_ap_mix3_partd"
}

for _, trackName in ipairs(trackLists) do
    UnlockRadioStationTrackList("RADIO_36_AUDIOPLAYER", trackName)
end

UnlockRadioStationTrackList("RADIO_36_AUDIOPLAYER", "tuner_ap_mix1")