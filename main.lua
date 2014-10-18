
g_Ores = {
E_BLOCK_GOLD_ORE,
E_BLOCK_DIAMOND_ORE,
E_BLOCK_REDSTONE_ORE,
E_BLOCK_LAPIS_ORE,
E_BLOCK_EMERALD_ORE
}

g_NumOres = #g_Ores

PlayerPos = {}

PLUGIN = nil


function Initialize(Plugin)
	Plugin:SetName("SphinxOres")
	Plugin:SetVersion(1)
	
	-- Hooks
  cPluginManager.AddHook(cPluginManager.HOOK_CHUNK_GENERATED, OnChunkGenerated)
  cPluginManager.AddHook(cPluginManager.HOOK_PLAYER_BREAKING_BLOCK, OnPlayerBreakingBlock)
  
  
	
	PLUGIN = Plugin -- NOTE: only needed if you want OnDisable() to use GetName() or something like that
	
	-- Command Bindings

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end





function OnDisable()
	LOG(PLUGIN:GetName() .. " is shutting down...")
end