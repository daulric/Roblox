local module = {}
local Signal = {}

function module.new(name)
    local self = setmetatable(module, Signal)
    self.args = {}
    self.BindEvent = Instance.new("BindableEvent")
    self.BindEvent.Name = name
    return self
end

function Signal:Fire(...)
    table.insert(self.args, ...)
    table.pack(self.args)
    self.BindEvent:Fire(self.args)
end

function Signal.OnEvent(handler)
    if not (type(handler) == "function") then
        print("this is not a function")
    end

    self.BindEvent.Event:Connect(handler)
end


return module