return {
	{
		"elmcgill/springboot-nvim",
		keys = {
			{
				"<leader>Jb",
				function()
					require("springboot-nvim").boot_run()
				end,
				desc = "Spring Boot Run Project",
			},
			{
				"<leader>Jc",
				function()
					require("springboot-nvim").generate_class()
				end,
				desc = "Create Java Class",
			},
			{
				"<leader>Ji",
				function()
					require("springboot-nvim").generate_interface()
				end,
				desc = "Create Java Interface",
			},
			{
				"<leader>Je",
				function()
					require("springboot-nvim").generate_enum()
				end,
				desc = "Create Java Enum",
			},
			{
				"<leader>Jr",
				function()
					require("springboot-nvim").generate_record()
				end,
				desc = "Create Java Record",
			},
		},
	},
}
