local QBCore = exports['et-core']:GetCoreObject()
-- _SET_WEAPON_DAMAGE_MODIFIER
SetPedSuffersCriticalHits(PlayerPedId(), false) -- BẬT / TẮT DAMAGE CHÍ MẠNG
SetWeaponDamageModifier(`weapon_unarmed`, 0.3)
SetWeaponDamageModifier(`weapon_battleaxe`, 0)
