if not SampleKeepsakeMod.Config.Enabled then return end

OnAnyLoad{ "DeathArea", function (triggerArgs)
    DebugPrint({Text = "Hello World!"})
end}

OnUsed{ 310036, function (triggerArgs)
    IncrementGiftMeter("SampleKeepsakeNpc", 1)
end}

ModUtil.Path.Context.Wrap("CheckDoorHealTrait", function()
    ModUtil.Path.Wrap("round", function(base, ...)
        return base(...) + GetTotalHeroTraitValue("SampleKeepsakeTraitValue")
    end, SampleKeepsakeMod)
end, SampleKeepsakeMod)