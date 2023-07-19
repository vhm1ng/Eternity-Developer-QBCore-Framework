
Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
		if GetDistanceBetweenCoords( 164.08, -991.62, 30.09, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 164.08, -991.62, 30.09  -1.400, "NGHIÊM CẤM", 4, 0.1, 0.1)
			Draw3DText( 164.08, -991.62, 30.09  -1.600, "Tiểu Nhị + LilBoi + Con bò chơi poker tại đây !!", 4, 0.1, 0.1)
			Draw3DText( 164.08, -991.62, 30.09  -1.800, "Dùng /jointable để vào bàn poker", 4, 0.1, 0.1)		
		end			
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end

Citizen.CreateThread(function()
    Holograms1()
end)

function Holograms1()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1 vector3()
		if GetDistanceBetweenCoords( 164.08, -991.62, 30.09, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText1( 164.08, -991.62, 30.09  -1.400, "NGHIÊM CẤM", 4, 0.1, 0.1)
			Draw3DText1( 164.08, -991.62, 30.09  -1.600, "Tiểu Nhị + LilBoi + Con bò chơi poker tại đây !!", 4, 0.1, 0.1)
			-- Draw3DText1( 164.08, -991.62, 30.09  -1.800, "Dùng /jointable để vào bàn poker", 4, 0.1, 0.1)		
		end		
				--Hologram No. 2
		-- if GetDistanceBetweenCoords( -419.50, 1166.00, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
		-- 	Draw3DText( -419.50, 1166.00, 326.00  -1.400, "Discord: discord.me/HailTheSnail", 4, 0.1, 0.1)
		-- 	Draw3DText( -419.50, 1166.00, 326.00  -1.600, "Website: www.BadExample.com", 4, 0.1, 0.1)
		-- 	Draw3DText( -419.50, 1166.00, 326.00  -1.800, "Twitter: @Example", 4, 0.1, 0.1)		
		-- end	
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText1(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 0, 0, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
