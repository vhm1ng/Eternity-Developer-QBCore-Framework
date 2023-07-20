-- NUI Callback

RegisterNUICallback('GetGalleryData', function(_, cb)
    local data = PhoneData.Images
    cb(data)
end)

RegisterNUICallback('DeleteImage', function(image,cb)
    TriggerServerEvent('et-phone:server:RemoveImageFromGallery',image)
    Wait(400)
    TriggerServerEvent('et-phone:server:getImageFromGallery')
    cb(true)
end)

-- Events

RegisterNetEvent('et-phone:refreshImages', function(images)
    PhoneData.Images = images
end)