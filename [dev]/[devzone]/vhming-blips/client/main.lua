local QBCore = exports['et-core']:GetCoreObject()

-- Đây là function test
if Config.SuDungBlipsTest then
    CreateThread(function()
        -- Blips có ped
        TestPed = AddBlipForCoord(BlipTestped.coords)
        SetBlipSprite (TestPed, BlipTestped.SetBlipSprite)
        SetBlipDisplay(TestPed, BlipTestped.SetBlipDisplay)
        SetBlipScale  (TestPed, BlipTestped.SetBlipScale)
        SetBlipAsShortRange(TestPed, true)
        SetBlipColour(TestPed, BlipTestped.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(BlipTestped.BlipLabel)
        EndTextCommandSetBlipName(TestPed)

        --Blips không có ped chỉ có điểm
        TestNoPed = AddBlipForCoord(BlipTestNoPed.coords)
        SetBlipSprite (TestNoPed, BlipTestNoPed.SetBlipSprite)
        SetBlipDisplay(TestNoPed, BlipTestNoPed.SetBlipDisplay)
        SetBlipScale  (TestNoPed, BlipTestNoPed.SetBlipScale)
        SetBlipAsShortRange(TestNoPed, true)
        SetBlipColour(TestNoPed, BlipTestNoPed.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(BlipTestNoPed.BlipLabel)
        EndTextCommandSetBlipName(TestNoPed)
    end)
end

-- Đây là function chuẩn
-- if Config.SuDungBlips then
--     CreateThread(function()
--         -- ...
--     end)
-- end