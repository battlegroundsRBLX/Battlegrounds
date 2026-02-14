-- Battlegrounds.lua
local Battlegrounds = {}
Battlegrounds.Modules = {2,3}
Battlegrounds.ModuleDetails = {                                      --version of the morphs // jf9s was here
    [102643105617548]={Name="Morphs",Description="unblacklisted morphs",Version="1.0.0",Author="jf9s"}, 
    [0]={Name="Packages",Description="Manages loot drops and inventory",Version="0.9.5",Author="jf9s"},
    [0]={Name="ExtraModule",Description="Additional module example",Version="0.1.0",Author="jf9s"}
}
function Battlegrounds:Init()
    local seen = {}
    for _,id in ipairs(self.Modules) do if not seen[id] then pcall(require,id) seen[id]=true end end
    for id,_ in pairs(self.ModuleDetails) do if not seen[id] then pcall(require,id) seen[id]=true end
end end
return Battlegrounds
