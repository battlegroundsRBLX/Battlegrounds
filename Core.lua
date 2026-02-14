-- Battlegrounds.lua
-- InitializeD BY JF9S
local Battlegrounds = {}
Battlegrounds.Modules = {
    123456789,
    987654321,
}

Battlegrounds.ModuleDetails = {
    [123456789] = {
        Name = "CoreCombat",
        Description = "Handles player combat mechanics",
        Version = "1.2.0",
        Author = "DevName"
    },
    [987654321] = {
        Name = "LootSystem",
        Description = "Manages loot drops and inventory",
        Version = "0.9.5",
        Author = "DevName"
    }
}
function Battlegrounds:Init()
    for _, moduleId in ipairs(self.Modules) do
        pcall(require, moduleId)
    end
end

return Battlegrounds
