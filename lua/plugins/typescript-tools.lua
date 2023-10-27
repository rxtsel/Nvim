-- "Native" TSServer client.
return {
	{
		"pmizio/typescript-tools.nvim",
		event = { "BufReadPre *.ts,*.tsx,*.js,*.jsx", "BufNewFile *.ts,*.tsx,*.js,*.jsx" },
		dependencies = { "nvim-lua/plenary.nvim", "nvim-lspconfig" },
		opts = {
			settings = {
				tsserver_file_preferences = {
					includeInlayParameterNameHints = "literals",
					includeInlayVariableTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
				},
			},
		},
	},
}
