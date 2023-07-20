Config = {}

Config.Command = 'mysimcards'
Config.simitems = "sim_card"

Config.NumberPrefix = "553" -- Prefix of the number
Config.NumberDigits =  6 -- Amount of digits after the prefix

function SendTextMessage(msg, type) --You can add your notification system here for simple messages.
    if type == 'inform' then 
      SetNotificationTextEntry('STRING')
      AddTextComponentString(msg)
      DrawNotification(0,1)
  
      --MORE EXAMPLES OF NOTIFICATIONS.
      --exports['qs-core']:Notify(msg, "primary")
      --exports['mythic_notify']:DoHudText('inform', msg)
    end
    if type == 'error' then 
      SetNotificationTextEntry('STRING')
      AddTextComponentString(msg)
      DrawNotification(0,1)
  
      --MORE EXAMPLES OF NOTIFICATIONS.
      --exports['qs-core']:Notify(msg, "error")
      --exports['mythic_notify']:DoHudText('error', msg)
    end
    if type == 'success' then 
      SetNotificationTextEntry('STRING')
      AddTextComponentString(msg)
      DrawNotification(0,1)
  
      --MORE EXAMPLES OF NOTIFICATIONS.
      --exports['qs-core']:Notify(msg, "success")
      --exports['mythic_notify']:DoHudText('success', msg)
    end
end