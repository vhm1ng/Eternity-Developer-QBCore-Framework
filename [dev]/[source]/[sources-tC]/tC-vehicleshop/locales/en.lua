local Translations = {
    error = {
        testdrive_alreadyin = "Already in test drive",
        testdrive_return = "This is not your test drive vehicle",
        Invalid_ID = "Invalid Player Id Supplied",
        playertoofar = "This player is not close enough",
        notenoughmoney = "Not enough money",
    },
    success = {
        purchased = "Congratulations on your purchase!",
    },
    menus = {
        vehHeader_header = "Vehicle Options",
        vehHeader_txt = "Interact with the current vehicle",
        returnTestDrive_header = "Finish Test Drive",
        goback_header = "Go Back",
        veh_price = "Price: $",
        submit_text = "Submit",
        test_header = "Test Drive",
        swap_header = "Swap Vehicle",
        swap_txt = "Change currently selected vehicle",
        --Free Use
        freeuse_test_txt = "Test drive currently selected vehicle",
        freeuse_buy_header = "Buy Vehicle",
        freeuse_buy_txt = "Purchase currently selected vehicle",
        freeuse_finance_txt = "Finance currently selected vehicle",
        --Managed
        managed_test_txt = "Allow player for test drive",
        managed_sell_header = "Sell Vehicle",
        managed_sell_txt = "Sell vehicle to Player",
        managed_finance_txt = "Finance vehicle to Player",
        submit_ID = "Server ID (#)",
    },
    general = {
        testdrive_timer = "Test Drive Time Remaining:",
        vehinteraction = "Vehicle Interaction",
        testdrive_timenoti = "You have %{testdrivetime} minutes remaining",
        testdrive_complete = "Vehicle test drive complete",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
