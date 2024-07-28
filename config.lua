lib.locale()
Config = {
  -- Change the language of the menu here!.
  -- Note fr and de are google translated, if you would like to help out with translation / just fix it for your server check below and change translations yourself
  -- try en, fr, de or sv.
    MenuLanguage = 'en',	
  -- Set this to true to enable some extra prints
    DebugDisplay = false,
  -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    EnableXtoCancel = true,
  -- Set this to true if you want to disarm the player when they play an emote.
    DisarmPlayer= false,
  -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
      AllowedInCars = true,
  -- You can disable the (F3) menu here / change the keybind.
    MenuKeybindEnabled = true,
    MenuKeybind = 170, -- Get the button number here https://docs.fivem.net/game-references/controls/
  -- You can disable the Favorite emote keybinding here.
    FavKeybindEnabled = false,
    FavKeybind = 171, -- Get the button number here https://docs.fivem.net/game-references/controls/
  -- You can change the header image for the f3 menu here
  -- Use a 512 x 128 image!
  -- NOte this might cause an issue of the image getting stuck on peoples screens
    CustomMenuEnabled = false,
    MenuImage = "https://i.imgur.com/kgzvDwQ.png",
  -- You can change the menu position here
    MenuPosition = "right", -- (left, right)
  -- You can disable the Ragdoll keybinding here.
    RagdollEnabled = false,
    RagdollKeybind = 303, -- Get the button number here https://docs.fivem.net/game-references/controls/
  -- You can disable the Facial Expressions menu here.
    ExpressionsEnabled = false,
  -- You can disable the Walking Styles menu here.
    WalkingStylesEnabled = false,	
  -- You can disable the Shared Emotes here.
      SharedEmotesEnabled = true,
      CheckForUpdates = false,
  -- If you have the SQL imported enable this to turn on keybinding.
      SqlKeybinding = false,
  }
  
  Config.KeybindKeys = {
      ['num4'] = 108,
      ['num5'] = 110,
      ['num6'] = 109,
      ['num7'] = 117,
      ['num8'] = 111,
      ['num9'] = 118
  }
  
  Config.Languages = {
    ['en'] = {
          ['emotes'] = 'Emotes',
          ['danceemotes'] = "🕺 Dance Emotes",
          ['propemotes'] = "📦 Prop Emotes",
          ['favoriteemotes'] = "🌟 Favorite",
          ['favoriteinfo'] = "Select an emote here to set it as your favorite.",
          ['rfavorite'] = "Reset favorite",
          ['prop2info'] = "❓ Prop Emotes can be located at the end",
          ['set'] = "Set (",
          ['setboundemote'] = ") to be your bound emote?",
          ['newsetemote'] = "~w~ is now your bound emote, press ~g~CapsLock~w~ to use it.",
          ['cancelemote'] = "Cancel Emote",
          ['cancelemoteinfo'] = "~r~X~w~ Cancels the currently playing emote",
          ['walkingstyles'] = "Walking Styles",
          ['resetdef'] = "Reset to default",
          ['normalreset'] = "Normal (Reset)",
          ['moods'] = "Moods",
          ['infoupdate'] = "Information",
          ['infoupdateav'] = "Information (Update available)",
          ['infoupdateavtext'] = "An update is available, get the latest version from ~y~https://github.com/andristum/dpemotes~w~",
          ['suggestions'] = "Suggestions?",
          ['suggestionsinfo'] = "'dullpear_dev' on FiveM forums for any feature/emote suggestions! ✉️",
          ['notvaliddance'] = "is not a valid dance.",
          ['notvalidemote'] = "is not a valid emote.",
          ['nocancel'] = "No emote to cancel.",
          ['maleonly'] = "This emote is male only, sorry!",
          ['emotemenucmd'] = "Do /emotemenu for a menu.",
          ['shareemotes'] = "👫 Shared Emotes",
          ['shareemotesinfo'] = "Invite a nearby person to emote",
          ['sharedanceemotes'] = "🕺 Shared Dances",
          ['notvalidsharedemote'] = "is not a valid shared emote.",
          ['sentrequestto'] = "Sent request to ~y~",
          ['nobodyclose'] = "Nobody ~r~close~w~ enough.",
          ['doyouwanna'] = "~y~Y~w~ to accept, ~r~L~w~ to refuse (~g~",
          ['refuseemote'] = "Emote refused.",
          ['makenearby'] = "makes the nearby player play",
          ['camera'] = "Press ~y~G~w~ to use camera flash.",
          ['makeitrain'] = "Press ~y~G~w~ to make it rain.",
          ['pee'] = "Hold ~y~G~w~ to pee.",
          ['spraychamp'] = "Hold ~y~G~w~ to spray champagne",
          ['bound'] = "Bound ",
          ['to'] = "to",
          ['currentlyboundemotes'] = " Currently bound emotes:",
          ['notvalidkey'] = "is not a valid key.",
          ['keybinds'] = "🔢 Keybinds",
          ['keybindsinfo'] = "Use"
    }
  }
  
  
  
  Strings = {
      ['Yes'] = 'Da',
      ['No'] = 'Ne',
      ['Animations'] = 'Animations',
      ['Synced'] = 'Synced animations',
      ['Sync_Request'] = 'Da li zelis %s %s?',
      ['Noone_Close'] = 'Nema nikog u blizini',
      ['Not_In_Car'] = 'Nisi u autu!'
  }
  
  Config.Synced = {
      {
          ['Label'] = 'Zagrljaj',
          ['RequesterLabel'] = 'zagrliti',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_a', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_b', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 9816,
                  ['xP'] = 0.05,
                  ['yP'] = 1.15,
                  ['zP'] = -0.05,
  
                  ['xR'] = 0.0,
                  ['yR'] = 0.0,
                  ['zR'] = 180.0,
              }
          }
      },
      {
          ['Label'] = 'Poljubac',
          ['RequesterLabel'] = 'poljubiti',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'hs3_ext-20', ['Anim'] = 'cs_lestercrest_3_dual-20', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'hs3_ext-20', ['Anim'] = 'csb_georginacheng_dual-20', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 0,
                  ['xP'] = 0.0,
                  ['yP'] = 0.53,
                  ['zP'] = 0.0,
  
                  ['xR'] = 0.0,
                  ['yR'] = 0.0,
                  ['zR'] = 180.0,
              }
          }
      },
      {
          ['Label'] = 'Baci pet',
          ['RequesterLabel'] = 'baciti pet sa',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'highfive_guy_a', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'highfive_guy_b', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 9816,
                  ['xP'] = -0.5,
                  ['yP'] = 1.25,
                  ['zP'] = 0.0,
  
                  ['xR'] = 0.9,
                  ['yR'] = 0.3,
                  ['zR'] = 180.0,
              }
          }
      },
      {
          ['Label'] = 'Bratski zagrljaj',
          ['RequesterLabel'] = 'uraditi bratski zagrljaj sa',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_a', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_b', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 9816,
                  ['xP'] = -0.025,
                  ['yP'] = 1.15,
                  ['zP'] = 0.0,
  
                  ['xR'] = 0.0,
                  ['yR'] = 0.0,
                  ['zR'] = 180.0,
              }
          }
      },
      {
          ['Label'] = 'Baci kocku',
          ['RequesterLabel'] = 'uraditu kocku sa',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationpaired@f_f_fist_bump', ['Anim'] = 'fist_bump_left', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationpaired@f_f_fist_bump', ['Anim'] = 'fist_bump_right', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 9816,
                  ['xP'] = -0.6,
                  ['yP'] = 0.9,
                  ['zP'] = 0.0,
  
                  ['xR'] = 0.0,
                  ['yR'] = 0.0,
                  ['zR'] = 270.0,
              }
          }
      },
      {
          ['Label'] = 'Pozdravi se (prijateljski)',
          ['RequesterLabel'] = 'pozdraviti se sa',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_a', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_b', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 9816,
                  ['xP'] = 0.0,
                  ['yP'] = 1.2,
                  ['zP'] = 0.0,
  
                  ['xR'] = 0.0,
                  ['yR'] = 0.0,
                  ['zR'] = 180.0,
              }
          }
      },
      {
          ['Label'] = 'Pozdravi se (poslovno)',
          ['RequesterLabel'] = 'rukovati se sa',
          ['Requester'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_a', ['Flags'] = 0,
          },
          ['Accepter'] = {
              ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_b', ['Flags'] = 0, ['Attach'] = {
                  ['Bone'] = 9816,
                  ['xP'] = 0.075,
                  ['yP'] = 1.0,
                  ['zP'] = 0.0,
  
                  ['xR'] = 0.0,
                  ['yR'] = 0.0,
                  ['zR'] = 180.0,
              }
          }
      },
          -- NSFW animations vvvvvvvv
          {
              ['Label'] = 'Popusi ga (stojeci)',
              ['RequesterLabel'] = 'da ti ga popusi',
              ['Requester'] = {
                  ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'pimpsex_hooker', ['Flags'] = 1, ['Attach'] = {
                      ['Bone'] = 9816,
                      ['xP'] = 0.0,
                      ['yP'] = 0.65,
                      ['zP'] = 0.0,
      
                      ['xR'] = 120.0,
                      ['yR'] = 0.0,
                      ['zR'] = 180.0,
                  }
              },
              ['Accepter'] = {
                  ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'pimpsex_punter', ['Flags'] = 1,
              },
          },
          {
              ['Label'] = 'Budi jeban',
              ['RequesterLabel'] = 'jebati',
              ['Requester'] = {
                  ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'shagloop_hooker', ['Flags'] = 1, ['Attach'] = {
                      ['Bone'] = 9816,
                      ['xP'] = 0.05,
                      ['yP'] = 0.4,
                      ['zP'] = 0.0,
      
                      ['xR'] = 120.0,
                      ['yR'] = 0.0,
                      ['zR'] = 180.0,
                  }
              },
              ['Accepter'] = {
                  ['Type'] = 'animation', ['Dict'] = 'misscarsteal2pimpsex', ['Anim'] = 'shagloop_pimp', ['Flags'] = 1,
              },
          },
          {
              ['Label'] = 'Analno (stojeci)', 
              ['RequesterLabel'] = 'primati ga analno',
              ['Requester'] = {
                  ['Type'] = 'animation', ['Dict'] = 'rcmpaparazzo_2', ['Anim'] = 'shag_loop_a', ['Flags'] = 1,
              }, 
              ['Accepter'] = {
                  ['Type'] = 'animation', ['Dict'] = 'rcmpaparazzo_2', ['Anim'] = 'shag_loop_poppy', ['Flags'] = 1, ['Attach'] = {
                      ['Bone'] = 9816,
                      ['xP'] = 0.015,
                      ['yP'] = 0.35,
                      ['zP'] = 0.0,
      
                      ['xR'] = 0.9,
                      ['yR'] = 0.3,
                      ['zR'] = 0.0,
                  },
              },
          },
          {
              ['Label'] = "Sex (Vozacevo mjesto)", 
              ['RequesterLabel'] = 'biti jeban/a',
              ['Car'] = true,
              ['Requester'] = {
                  ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@vice@sex', ['Anim'] = 'frontseat_carsex_loop_m', ['Flags'] = 1,
              }, 
              ['Accepter'] = {
                  ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@vice@sex', ['Anim'] = 'frontseat_carsex_loop_f', ['Flags'] = 1,
              },
          },
          {
              ['Label'] = "Sex (da te neko jebe u autu)", 
              ['RequesterLabel'] = 'jebati',
              ['Car'] = true,
              ['Requester'] = {
                  ['Type'] = 'animation', ['Dict'] = 'random@drunk_driver_2', ['Anim'] = 'cardrunksex_loop_f', ['Flags'] = 1,
              }, 
              ['Accepter'] = {
                  ['Type'] = 'animation', ['Dict'] = 'random@drunk_driver_2', ['Anim'] = 'cardrunksex_loop_m', ['Flags'] = 1,
              },
          },
          {
              ['Label'] = "Dobij blowjob (vozacevo mjesto)", 
              ['RequesterLabel'] = 'popusiti ga',
              ['Car'] = true,
              ['Requester'] = {
                  ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'm_blow_job_loop', ['Flags'] = 1,
              }, 
              ['Accepter'] = {
                  ['Type'] = 'animation', ['Dict'] = 'oddjobs@towing', ['Anim'] = 'f_blow_job_loop', ['Flags'] = 1,
              },
          },
          -- NSFW animations ^^^^^^^
  }
  
  
  Config.Kezualno = {
  
      
      {['Label'] = "Pušenje cigare", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SMOKING'},
      {['Label'] = "Piva", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_DRINKING'},
      {['Label'] = "Gledanje u telefon", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PARTYING'},
  
  
      {['Label'] = "Zracna girata", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@air_guitar', ['Anim'] = 'air_guitar', ['Flags'] = 0},
      {['Label'] = "Dj", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@dj', ['Anim'] = 'dj', ['Flags'] = 0},
      {['Label'] = "Jebavanje zraka", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationfemale@air_shagging', ['Anim'] = 'air_shagging', ['Flags'] = 0},
      {['Label'] = "Rock'n'roll", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperrock', ['Anim'] = 'mp_player_int_rock', ['Flags'] = 0},
      {['Label'] = "Trijezno stajanje", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_bum_standing@drunk@idle_a', ['Anim'] = 'idle_a', ['Flags'] = 0},
      {['Label'] = "Povracanje iz auta", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@tie', ['Anim'] = 'vomit_outside', ['Flags'] = 0},
  
      {['Label'] = "Ispijanje kafe", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_aa_coffee@idle_a', ['Anim'] = 'idle_a', ['Flags'] = 0},
      {['Label'] = "Sedenje", ['Type'] = 'animation', ['Dict'] = 'anim@heists@prison_heistunfinished_biztarget_idle', ['Anim'] = 'target_idle', ['Flags'] = 0},
      {['Label'] = "Naslanjanje na zid", ['Type'] = 'scenario', ['Anim'] = 'world_human_leaning'},
      {['Label'] = "Ležanje na ledjima", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SUNBATHE_BACK'},
      {['Label'] = "Ležanja na stomaku", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_SUNBATHE'},
      {['Label'] = "Čistiti", ['Type'] = 'scenario', ['Anim'] = 'world_human_maid_clean'},
      {['Label'] = "Roštiljanje", ['Type'] = 'scenario', ['Anim'] = 'PROP_HUMAN_BBQ'},
      {['Label'] = "T poza", ['Type'] = 'animation', ['Dict'] = 'mini@prostitutes@sexlow_veh', ['Anim'] = 'low_car_bj_to_prop_female', ['Flags'] = 0},
      {['Label'] = "Slikanje selfija", ['Type'] = 'scenario', ['Anim'] = 'world_human_tourist_mobile'},
      {['Label'] = "Prisluškivanje", ['Type'] = 'animation', ['Dict'] = 'mini@safe_cracking', ['Anim'] = 'idle_base', ['Flags'] = 0},
      
  }
  
  Config.Pozdravi = {
      {['Label'] = "Cao", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_hello', ['Flags'] = 0},
      {['Label'] = "Maši", ['Type'] = 'animation', ['Dict'] = 'mp_common', ['Anim'] = 'givetake1_a', ['Flags'] = 0},
      {['Label'] = "Pozdrav", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'handshake_guy_a', ['Flags'] = 0},
      {['Label'] = "Zagrljaj", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'hugs_guy_a', ['Flags'] = 0},
      {['Label'] = "Salutiraj", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_uppersalute', ['Anim'] = 'mp_player_int_salute', ['Flags'] = 0}, 
  }
  
  Config.Poso = {
      {['Label'] = "Osumnjičeni : Taoc", ['Type'] = 'animation', ['Dict'] = 'random@arrests@busted', ['Anim'] = 'idle_c', ['Flags'] = 0},
      {['Label'] = "Pecanje", ['Type'] = 'scenario', ['Anim'] = 'world_human_stand_fishing'},
      {['Label'] = "Policija : Istraživanje", ['Type'] = 'animation', ['Dict'] = 'amb@code_human_police_investigate@idle_b', ['Anim'] = 'idle_f', ['Flags'] = 0},
      {['Label'] = "Policija : Korisćenje radia", ['Type'] = 'animation', ['Dict'] = 'random@arrests', ['Anim'] = 'generic_radio_chatter', ['Flags'] = 0},
      {['Label'] = "Policija : Saobarćajac", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CAR_PARK_ATTENDANT'},
      {['Label'] = "Policija : Dvogled", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_BINOCULARS'},
      {['Label'] = "Poljoprivreda : Sadjenje", ['Type'] = 'scenario', ['Anim'] = 'world_human_gardener_plant'},
      {['Label'] = "Mehanicar : Popravljanje motora", ['Type'] = 'animation', ['Dict'] = 'mini@repair', ['Anim'] = 'fixing_a_ped', ['Flags'] = 0},
      {['Label'] = "Bolničar : Klečanje", ['Type'] = 'scenario', ['Anim'] = 'CODE_HUMAN_MEDIC_KNEEL'},
      {['Label'] = "Taxi : Razgovor sa kupcem", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@driver', ['Anim'] = 'leanover_idle', ['Flags'] = 0},
      {['Label'] = "Taxi : Davanje računa", ['Type'] = 'animation', ['Dict'] = 'oddjobs@taxi@cyi', ['Anim'] = 'std_hand_off_ps_passenger', ['Flags'] = 0},
      {['Label'] = "Trgovac : Davanje", ['Type'] = 'animation', ['Dict'] = 'mp_am_hold_up', ['Anim'] = 'purchase_beerbox_shopkeeper', ['Flags'] = 0},
      {['Label'] = "Šanker : Posluživanje pića", ['Type'] = 'animation', ['Dict'] = 'mini@drinking', ['Anim'] = 'shots_barman_b', ['Flags'] = 0},
      {['Label'] = "Novinar : Fotografisanje", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PAPARAZZI'},
      {['Label'] = "Svi poslovi : Oglasnja tabla", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CLIPBOARD'},
      {['Label'] = "Svi poslovi : Udaranje cekićem", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_HAMMERING'},
      {['Label'] = "Beskućnik : Držanje znaka", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_BUM_FREEWAY'},
      {['Label'] = "Beskućnik : Ljudska statua", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_HUMAN_STATUE'},
  }
  
  Config.Zanimljivo = {
  
      {['Label'] = "Aplaudiranje", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_CHEERING'},
      {['Label'] = "Super", ['Type'] = 'animation', ['Dict'] = 'mp_action', ['Anim'] = 'thanks_male_06', ['Flags'] = 0},
      {['Label'] = "Pokazivanje prstom", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_point', ['Flags'] = 0},
      {['Label'] = "Dodji", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_come_here_soft', ['Flags'] = 0},
      {['Label'] = "Doneti", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_bring_it_on', ['Flags'] = 0},
      {['Label'] = "Ja", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_me', ['Flags'] = 0},
      {['Label'] = "Znao sam", ['Type'] = 'animation', ['Dict'] = 'anim@am_hold_up@male', ['Anim'] = 'shoplift_high', ['Flags'] = 0},
      {['Label'] = "Ne radi", ['Type'] = 'scenario', ['Anim'] = 'idle_d'},
      {['Label'] = "Ne radi", ['Type'] = 'scenario', ['Anim'] = 'idle_a'},
      {['Label'] = "Udaranje rukom po čelu", ['Type'] = 'animation', ['Dict'] = 'anim@mp_player_intcelebrationmale@face_palm', ['Anim'] = 'face_palm', ['Flags'] = 0},
      {['Label'] = "Smiri se", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_easy_now', ['Flags'] = 0},
      {['Label'] = "Šta sam uradio?", ['Type'] = 'animation', ['Dict'] = 'oddjobs@assassinate@multi@', ['Anim'] = 'react_big_variations_a', ['Flags'] = 0},
      {['Label'] = "Bojati se", ['Type'] = 'animation', ['Dict'] = 'amb@code_human_cower_stand@male@react_cowering', ['Anim'] = 'base_right', ['Flags'] = 0},
      {['Label'] = "Poziv na tuču", ['Type'] = 'animation', ['Dict'] = 'anim@deathmatch_intros@unarmed', ['Anim'] = 'intro_male_unarmed_e', ['Flags'] = 0},
      {['Label'] = "Nije moguće", ['Type'] = 'animation', ['Dict'] = 'gestures@m@standing@casual', ['Anim'] = 'gesture_damn', ['Flags'] = 0},
      {['Label'] = "Zagrljaj", ['Type'] = 'animation', ['Dict'] = 'mp_ped_interaction', ['Anim'] = 'kisses_guy_a', ['Flags'] = 0},
      {['Label'] = "Dva srednja prsta", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperfinger', ['Anim'] = 'mp_player_int_finger_01_enter', ['Flags'] = 0},
      {['Label'] = "Drkanje", ['Type'] = 'animation', ['Dict'] = 'mp_player_int_upperwank', ['Anim'] = 'mp_player_int_wank_01', ['Flags'] = 0},
      {['Label'] = "Metak u glavu", ['Type'] = 'animation', ['Dict'] = 'mp_suicide', ['Anim'] = 'pistol', ['Flags'] = 0},
  }
  
  Config.Sportiva = {
      {['Label'] = "Flex mišićima", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_muscle_flex@arms_at_side@base', ['Anim'] = 'base', ['Flags'] = 0},
      {['Label'] = "Dizanje tegova", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_muscle_free_weights@male@barbell@base', ['Anim'] = 'base', ['Flags'] = 0},
      {['Label'] = "Sklekovi", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_push_ups@male@base', ['Anim'] = 'base', ['Flags'] = 0},
      {['Label'] = "Trbušnjaci", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_sit_ups@male@base', ['Anim'] = 'base', ['Flags'] = 0},
      {['Label'] = "Joga", ['Type'] = 'animation', ['Dict'] = 'amb@world_human_yoga@male@base', ['Anim'] = 'base_a', ['Flags'] = 0},
  
  }
  
  
  Config.Strip = {
      {['Label'] = "Poziranje 1", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@idles@stripper', ['Anim'] = 'stripper_idle_02', ['Flags'] = 0},
      {['Label'] = "Poziranje 2", ['Type'] = 'scenario', ['Anim'] = 'WORLD_HUMAN_PROSTITUTE_HIGH_CLASS'},
      {['Label'] = "Pokazivanje grudi", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@backroom@', ['Anim'] = 'stripper_b_backroom_idle_b', ['Flags'] = 0},
      {['Label'] = "Striptiz 1", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@lap_dance@ld_girl_a_song_a_p1', ['Anim'] = 'ld_girl_a_song_a_p1_f', ['Flags'] = 0},
      {['Label'] = "Striptiz 2", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@private_dance@part2', ['Anim'] = 'priv_dance_p2', ['Flags'] = 0},
      {['Label'] = "Striptiz na kolenima", ['Type'] = 'animation', ['Dict'] = 'mini@strip_club@private_dance@part3', ['Anim'] = 'priv_dance_p3', ['Flags'] = 0},
  
  }
  
  Config.Styles = {
      ["1"] = {
          label = 'Arrogant',
          value = 'move_f@arrogant@a'
      },
      ["2"] = {
          label = 'Casual',
          value = 'move_m@casual@a'
      },
      ["3"] = {
          label = 'Casual 2',
          value = 'move_m@casual@b'
      },
      ["4"] = {
        label = 'Casual 3',
        value = 'move_m@casual@c'
      },
      ["5"] = {
        label = 'Casual 4',
        value = 'move_m@casual@d'
      },
      ["6"] = {
        label = 'Casual 5',
        value = 'move_m@casual@e'
      },
      ["7"] = {
        label = 'Casual 6',
        value = 'move_m@casual@f'
      },
      ["8"] = {
        label = 'Confident',
        value = 'move_m@confident'
      },
      ["9"] = {
        label = 'Business',
        value = 'move_m@business@a'
      },
      ["10"] = {
        label = 'Business 2',
        value = 'move_m@business@b'
      },
      ["11"] = {
        label = 'Business 3',
        value = 'move_m@business@c'
      },
      ["12"] = {
        label = 'Femme',
        value = 'move_f@femme@'
      },
      ["13"] = {
        label = 'Flee',
        value = 'move_f@flee@a'
      },
      ["14"] = {
        label = 'Gangster',
        value = 'move_m@gangster@generic'
      },
      ["15"] = {
        label = 'Gangster 2',
        value = 'move_m@gangster@ng'
      },
      ["16"] = {
        label = 'Gangster 3',
        value = 'move_m@gangster@var_e'
      },
      ["17"] = {
          label = 'Gangster 4',
          value = 'move_m@gangster@var_f'
      },
      ["18"] = {
        label = 'Gangster 5',
        value = 'move_m@gangster@var_i'
      },
      ["19"] = {
        label = 'Heels',
        value = 'move_f@heels@c'
      },
      ["20"] = {
        label = 'Heels 2',
        value = 'move_f@heels@d'
      },
      ["21"] = {
        label = 'Hiking',
        value = 'move_m@hiking'
      },
      ["22"] = {
        label = 'Muscle',
        value = 'move_m@muscle@a'
      },
      ["23"] = {
        label = 'Quick',
        value = 'move_m@quick'
      },
      ["24"] = {
        label = 'Wide',
        value = 'move_m@bag'
      },
      ["25"] = {
        label = 'Scared',
        value = 'move_f@scared'
      },
      ["26"] = {
        label = 'Brave',
        value = 'move_m@brave'
      },
      ["27"] = {
        label = 'Tipsy',
        value = 'move_m@drunk@slightlydrunk'
      },
      ["28"] = {
        label = 'Injured',
        value = 'move_m@injured'
      },
      ["29"] = {
        label = 'Tough',
        value = 'move_m@tough_guy@'
      },
      ["30"] = {
        label = 'Sassy',
        value = 'move_m@sassy'
      },
      ["31"] = {
        label = 'Sad',
        value = 'move_m@sad@a'
      },
      ["32"] = {
        label = 'Posh',
        value = 'move_m@posh@'
      },
      ["33"] = {
        label = 'Alien',
        value = 'move_m@alien'
      },
      ["34"] = {
        label = 'Nonchalant',
        value = 'move_m@non_chalant'
      },
      ["35"] = {
        label = 'Hobo',
        value = 'move_m@hobo@a'
      },
      ["36"] = {
        label = 'Money',
        value = 'move_m@money'
      },
      ["37"] = {
        label = 'Swagger',
        value = 'move_m@swagger'
      },
      ["38"] = {
        label = 'Shady',
        value = 'move_m@shadyped@a'
      },
      ["39"] = {
        label = 'Man Eater',
        value = 'move_f@maneater'
      },
      ["40"] = {
        label = 'ChiChi',
        value = 'move_f@chichi'
      },
      ["41"] = {
        label = 'Default',
        value = 'default'
      },
    }
  
  