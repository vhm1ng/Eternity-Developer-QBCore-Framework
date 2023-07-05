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

if Config.SuDungBlips then
    CreateThread(function()
        VHMingBlip = AddBlipForCoord(BlipVHMingBlip.coords)
        SetBlipSprite (VHMingBlip, BlipVHMingBlip.SetBlipSprite)
        SetBlipDisplay(VHMingBlip, BlipVHMingBlip.SetBlipDisplay)
        SetBlipScale  (VHMingBlip, BlipVHMingBlip.SetBlipScale)
        SetBlipAsShortRange(VHMingBlip, true)
        SetBlipColour(VHMingBlip, BlipVHMingBlip.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(BlipVHMingBlip.BlipLabel)
        EndTextCommandSetBlipName(VHMingBlip)

        ThiBangBlip = AddBlipForCoord(BlipThiBangBlip.coords)
        SetBlipSprite (ThiBangBlip, BlipThiBangBlip.SetBlipSprite)
        SetBlipDisplay(ThiBangBlip, BlipThiBangBlip.SetBlipDisplay)
        SetBlipScale  (ThiBangBlip, BlipThiBangBlip.SetBlipScale)
        SetBlipAsShortRange(ThiBangBlip, true)
        SetBlipColour(ThiBangBlip, BlipThiBangBlip.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(BlipThiBangBlip.BlipLabel)
        EndTextCommandSetBlipName(ThiBangBlip)

        ChoTrieuKhucBlip = AddBlipForCoord(BlipChoTrieuKhucBlip.coords)
        SetBlipSprite (ChoTrieuKhucBlip, BlipChoTrieuKhucBlip.SetBlipSprite)
        SetBlipDisplay(ChoTrieuKhucBlip, BlipThiBangBlip.SetBlipDisplay)
        SetBlipScale  (ChoTrieuKhucBlip, BlipChoTrieuKhucBlip.SetBlipScale)
        SetBlipAsShortRange(ChoTrieuKhucBlip, true)
        SetBlipColour(TChoTrieuKhucBlip, BlipChoTrieuKhucBlip.SetBlipColour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(BlipChoTrieuKhucBlip.BlipLabel)
        EndTextCommandSetBlipName(ChoTrieuKhucBlip)
    end)
end


