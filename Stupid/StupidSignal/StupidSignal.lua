local module = {}
local RunService = game:GetService("RunService")

function module.new(name)
    local self = {}
    self.args = {}
    self.BindEvent = Instance.new("BindableEvent")
    self.BindEvent.Name = name
    return self
end

function module:Fire(...)
    table.insert(self.args, ...)
    table.pack(self.args)
    self.BindEvent:Fire(self.args)
end

function module.OnEvent(handler)
    if not (type(handler) == "function") then
        print("this is not a function")
    end

    self.BindEvent.Event:Connect(handler)
end


return module