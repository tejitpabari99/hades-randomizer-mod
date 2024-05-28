if not MyMod.Config.Enabled then return end

function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end



OnUsed{ "ExitDoors", function (triggerArgs)
    
    new_trait = GiftOrdering[math.random(1, #GiftOrdering)]
    DebugPrint({Text=GameState.LastAwardTrait})
    UnequipKeepsake( CurrentRun.Hero, GameState.LastAwardTrait)
    GameState.LastAwardTrait = new_trait
    EquipKeepsake( CurrentRun.Hero, GameState.LastAwardTrait )
    DebugPrint({Text=GameState.LastAwardTrait})

end}

OnUsed{ 310036, function (triggerArgs)
    IncrementGiftMeter("NPC_Cerberus_01", 1)
    IncrementGiftMeter("NPC_Orpheus_01", 3)
    IncrementGiftMeter("NPC_Eurydice_01", 3)
    IncrementGiftMeter("NPC_Patroclus_01", 3)
    IncrementGiftMeter("NPC_Hades_01", 3)
    IncrementGiftMeter("NPC_Persephone_Home_01", 3)
    IncrementGiftMeter("NPC_Nyx_01", 3)
    IncrementGiftMeter("NPC_Hypnos_01", 3)
    IncrementGiftMeter("NPC_FurySister_01", 3)
    IncrementGiftMeter("NPC_Thanatos_01", 3)
    IncrementGiftMeter("NPC_Dusa_01", 3)
    IncrementGiftMeter("NPC_Skelly_01", 3)
    IncrementGiftMeter("NPC_Sisyphus_01", 3)
    IncrementGiftMeter("NPC_Bouldy_01", 3)
    IncrementGiftMeter("NPC_Charon_01", 3)
    IncrementGiftMeter("NPC_Cerberus_01", 3)
    IncrementGiftMeter("ZeusUpgrade", 3)
    IncrementGiftMeter("PoseidonUpgrade", 3)
    IncrementGiftMeter("AthenaUpgrade", 3)
    IncrementGiftMeter("AresUpgrade", 3)
end}