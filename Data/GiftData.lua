if not SampleKeepsakeMod.Config.Enabled then return end

table.insert(GiftOrdering, "SampleKeepsakeTrait")

GiftData.SampleKeepsakeNpc =
{
    InheritFrom = {"DefaultGiftData"},	
    [1] = { Gift = "SampleKeepsakeTrait" }
}