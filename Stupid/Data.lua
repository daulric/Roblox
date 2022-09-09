--This is a method of storing data in a datastore like firebase or roblox datastore

local Data = {}
local module = {}


function module:AddData(data, dictionaryData)
    if dictionaryData ~= nil then
        Data[dictionaryData] = data
        return
    end
    
    table.insert(Data, data)
end

return module
