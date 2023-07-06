local QBCore = exports['et-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1126284807651999864/vgCTm-e-RM0X6eEsl6Lt9BP8y-_nxxG7nLWr4OXPikCayPYGlPTraZ8eCwMPO7BgUHcE',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1126285009498681394/8-cicz4cb7lP5XtBTCNlogprKTdF0rEYKl-PzvzfdyZXQxlQ9MGe1d2Yh-NYvGQ5M5DO',
    ['playermoney'] = 'https://discord.com/api/webhooks/1126285102243119215/x2ehyAcfS2lFaLWdaIB7UyIxRJZkb_Y2MAxyom6FvaiEDKGhs_bAIU5yA41GrOUHJQ_B',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1126285166881558669/LDE3IIkn-VGig1pkR-gJCe1unyPdxrIcwYiapblhXBpjrQQdBZpYt-LwagQiODQMXguK',
    ['robbing'] = 'https://discord.com/api/webhooks/1126285237211631647/g05v5OwJ4-FFv7K-0ngYmkXFntEq1wTd9B3kKTC2b040DWeP3fHCtxxwsPUCfkMSFMaL',
    ['cuffing'] = 'https://discord.com/api/webhooks/1126285395630505995/QCZhsfJ3IIsi3aXk0AtlbCIJOgpTU-w7LGw-EnafYQqUPhi00seAKHQq5lXfncOsn6HG',
    ['drop'] = 'https://discord.com/api/webhooks/1126285454543700109/3V9UC8CxDQlYyJ4MqVDTh7hq4BJWSAoZIsLchvy0NVh8xD-JVfvqxJz1YTt6AhRcoSvA',
    ['trunk'] = 'https://discord.com/api/webhooks/1126285591621935267/SsD5_w5DqZ3SQ8xz0VnjzHt9aZT9ge6oHyOpbeTCe_hAQ1d8qhG1QbuMnT775zkRbOVM',
    ['stash'] = 'https://discord.com/api/webhooks/1126285648387637357/BznWxsKXKxwcdn9XX0z6QfWPHQ3-XKQexJGiBEU1PwfPvAmd6o_es0NzjE8pil0Q2jnq',
    ['glovebox'] = 'https://discord.com/api/webhooks/1126285716507344927/5iwx7pbBlOxwK6hRgc2xYOqGtZIwnngcC4LGY9p-mv8NKebB8TDvZlaDtMzX52kkAiE0',
    ['banking'] = 'https://discord.com/api/webhooks/1126285794856943647/smqEHAf5f5oNIAgN-7I5Ran5gYK8xm5-R9QHS2_jWikR3QSAp2Ub2pdpLZPVcTjWD4vi',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1126285862620114944/wq28B3ua4fFRHMbEARFbYOfGMeloz6KXPXPrYIueoOn9R-mMXXIIWuq6G_Miu5R9aVLq',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1126285975983763486/OCc6F06tTfCltGtQU-YoFuIG3IzjCIc_tW9EaibUlVu2N3Vz_jvOByFMA8KcUgpVEezb',
    ['shops'] = 'https://discord.com/api/webhooks/1126286064890417163/WXNaivi2r0xX2se5gQhX2SzauwKHp8jpHzwO5Ys_0FPa_JwBXLTddikHQN3LvJ2Q7XWC',
    ['dealers'] = 'https://discord.com/api/webhooks/1126286136218759190/FZ7R33Eguq9jA9NYJ2eK-0m5H90xgk8oQdtnLAzKpi1hhplzggfjphF8dcwwJjfsUCQe',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1126286194507006003/R4qJ8yKnndOHc4Svwcssu7AF7MJW6HuZFQaV5Rf0CqA2OdkvVAhuGy4TtrW021mnu_qz',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1126286273842249748/sHJTFszO6msm5dSGnMT9nIzS2x2D6eS5vkGEyzPIddHAH_ebFitnhB_8-L9wh7gKLW5x',
    ['powerplants'] = 'https://discord.com/api/webhooks/1126286347645227028/cQ7l4IqjKbft3EN8-XA-tEC3tHjkKml24Hcq5fEgc-7SjFPghHfh1W9Y-0BMbFhORmpJ',
    ['death'] = 'https://discord.com/api/webhooks/1126286431355146300/ANrOA_1U-we-DNNmcNwjKYFjM2MsXYhiknzOWJyRE0Pv1uhbrtUqdnAWLS4l1A6puI80',
    ['joinleave'] = 'https://discord.com/api/webhooks/1126286484723474472/-Jsbj1K1DbYkMGFXMkqHWzLIdjhwfDCvfV3c94_6cyZR5A_XIOBDyILMJGGDyBJudVrf',
    ['ooc'] = 'https://discord.com/api/webhooks/1126286551035412490/Xri2fO2nam7ohjoZVFmcSBzUkM5Rccqt_Aujq3GFVgpi7od8B09tGZPtVOiS_aF8ZEIV',
    ['report'] = 'https://discord.com/api/webhooks/1126286635634524210/MEW0d1Pi0Zv6pbviqoyC67HpRADTu0K5pruABgZ4RdbGrtBNvrnCNxXAyHO95qFx7TBo',
    ['me'] = 'https://discord.com/api/webhooks/1126286688872828978/t6KZk97sYe62qLzVpXLQC9SvKwepvpHJj0h3UxyW3BbryLdzNzX1ETKaTmXvhlE9kyxe',
    ['pmelding'] = 'https://discord.com/api/webhooks/1126286921593790494/eUwcaKUsKceGnTaOXrvKhuARpNxnrMGKx1zWoI4EG_1YYdmP3PSjTr-DQP4bfaW2jYO3',
    ['112'] = 'https://discord.com/api/webhooks/1126287791362412645/rmSZ9dkFbsOAgL_wTCusVDvJTbGJ5jH2OzdkYmkc07Fci1EpTFp2N_ShjoAu0yUX4wB1',
    ['bans'] = 'https://discord.com/api/webhooks/1126288625546571858/vzcIaXm6W6rlPuwRy7eoP4nJEz9Qocol-_XCZfOQemlMP3oJ02hvvAeSwx9saIt-PfBZhttps://discord.com/api/webhooks/1126288625546571858/vzcIaXm6W6rlPuwRy7eoP4nJEz9Qocol-_XCZfOQemlMP3oJ02hvvAeSwx9saIt-PfBZ',
    ['anticheat'] = 'https://discord.com/api/webhooks/1126289045035696148/6otnJUK7cjEUcgfABSWf9UVs9vM5wwd_o_ZNV_s_kAilqO7Sh7af_JXwsVUHgS2V1BTp',
    ['weather'] = 'https://discord.com/api/webhooks/1126289387626450994/V_6VMYtdIvCEl0dYaXKBa-ttHbB8WSGkYFidpw90KhynPw-ZK7mn0CmCrD7JHBK6cy1-',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1126290571447783556/S9Ko4aGOA3RqR4atmzeSW9LbC3lKwuO6U2_4fM_GovOGTcRwooflTZOXBwjWylcNP6M_',
    ['bennys'] = 'https://discord.com/api/webhooks/1126290854299058176/eTGFB0yQDyS8QLiQHzAX5E2oEiWJ7ft9RWPo56FzQ7DEdrqqvprGt_qQtqBox0s1EEtS',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1126291234508505099/lsEmNO_YG9IverTc9pmpowevQTOlHdQVNqbMd_ihvGFGcALfrq4YdsbF2WrA3x0tmD-3',
    ['robbery'] = 'https://discord.com/api/webhooks/1126295755431346247/yVX17KLTmtMtcfZi6w-JC_Ip2e72KqCWtYV3k00K-rTRsi92bylBcr-K4vIssNY1Bc9o',
    ['casino'] = 'https://discord.com/api/webhooks/1126295829230125196/-Qd3yg65ZNxoX9K0YtxH5ls-rYlAH2Kz2VC-8TXXLEl0_OUsFwE6v4laEE5wJSWLuSVr',
    ['traphouse'] = 'https://discord.com/api/webhooks/1126295889070272534/MAAYEnL4A_kWVxQYDi5wHa--2Zg_8cwx_SzKl7YKUTkojzlVOj0PyeeqTvQZxicbcNDH',
    ['911'] = 'https://discord.com/api/webhooks/1126297811915378780/2Z5URbvALO2vQd2qO5yiIS9DFbmooVBfyRX4NgY9r0l8OFoTZvb-j_ZajeR4uxyav2k4',
    ['palert'] = 'https://discord.com/api/webhooks/1126297883969331301/56F4GWYxPeboT_Mvq2_GoIqBpSWy2rH4jNDmM3JjnEeOxWE7dm5ltU040VgFgQczmFTf',
    ['house'] = 'https://discord.com/api/webhooks/1126298659869446245/FC7iyjlr9w1HnpkxO7bLBjfcEdYcTAvEEPUGIelY1yBE0hN7REQsdjMfyAjEE5AKfOof',
    ['qbjobs'] = 'https://discord.com/api/webhooks/1126299199416311808/9iUt_wDzXEhka0q6hRA1YqLaM7ffg9bNEFFCWBTKbUJMjVQYR4uZ2rx1ZJWDUGwI1LNL',
    ['fishing'] = 'https://discord.com/api/webhooks/1126300219173249045/SRRMlqgIljffgIbGEqrCEZpDKaCtsecfAvrXoYAAP2iQi7DefTDDTVAXEQeByCJO9JrZ',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('et-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/497706415079555082/1030442837071896586/Mao_Zedong_portrait.jpg?width=530&height=701',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('et-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
