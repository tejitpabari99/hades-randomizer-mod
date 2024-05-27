if not SampleKeepsakeMod.Config.Enabled then return end

TraitData.SampleKeepsakeTrait =
{
    Icon = "Keepsake_Collar",
    EquipSound = "/SFX/Menu Sounds/KeepsakeCerberusCollar",
    InheritFrom = { "GiftTrait" },
    InRackTitle = "SampleKeepsakeTrait_Rack",
    SampleKeepsakeTraitValue = SampleKeepsakeMod.Config.HealValue,
    ExtractValues =
	{
		{
			Key = "SampleKeepsakeTraitValue",
			ExtractAs = "TooltipHeal"
		}
	},
    SignOffData =
	{
	  {
		Text = "SampleKeepsakeSignoff"
	  }
	}
}