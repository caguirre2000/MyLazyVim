return {
	{
		"mfussenegger/nvim-jdtls",
		opts = {
			settings = {
				java = {
					format = {
						settings = {
							profile = "Criss",
							url = "file:///home/criss/formatter.xml",
						},
					},
				},
			},
		},
		-- config = function(_, opts)
		--     		require("jdtls").start_or_attach(opts)  -- Inicia jdtls con la configuración
    	-- end,
	},
}
