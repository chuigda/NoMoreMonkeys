local kill_on_steal = GetModConfigData("kill_on_steal")
local kill_on_pickup = GetModConfigData("kill_on_pickup")
local kill_on_attack = GetModConfigData("kill_on_attack")

local function ImmediateDeath(inst)
    if inst.components.health ~= nil then
        inst.components.health:Kill()
    end
end

local function AnnoyingMonkeyPostInit(self)
    if not GLOBAL.TheWorld.ismastersim then
        return
    end

    self.event_listeners.death = {}
    self:ListenForEvent("death", function (inst, data)
        if inst.components.inventory ~= nil then
            inst.components.inventory:DropEverything(true)
        end
    end)

    if kill_on_attack then
        self:ListenForEvent("onattackother", ImmediateDeath)
    end

    if kill_on_pickup then
        self:ListenForEvent("itemget", ImmediateDeath)
    end

    if kill_on_steal and self.components.thief ~= nil then
        self.components.thief:SetOnStolenFn(function (inst, victim)
            inst.components.health:Kill()
        end)
    end
end

AddPrefabPostInit("powder_monkey", AnnoyingMonkeyPostInit)
AddPrefabPostInit("prime_mate", AnnoyingMonkeyPostInit)

AddPrefabPostInit("cursed_monkey_token", function (self)
    self:AddComponent("fuel")
    self.components.fuel.fuelvalue = 200
end)
