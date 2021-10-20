data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('redemrp_apple:addApple')
AddEventHandler('redemrp_Apple:addApple', function() 
	local _source = source
	local ItemData = data.getItem(_source, 'apple')
	local ItemData2 = data.getItem(_source, 'stick')
	math.randomseed(GetGameTimer())
	local amount = math.random(1,2)
	ItemData.AddItem(amount)
	ItemData2.AddItem(1)
end)


RegisterServerEvent("RegisterUsableItem:apple")
AddEventHandler("RegisterUsableItem:apple", function(source)
    local _source = source
	local ItemData = data.getItem(_source, 'apple')
	ItemData.RemoveItem(1)
    TriggerClientEvent('redemrp_apple:EatApple', _source)
end)