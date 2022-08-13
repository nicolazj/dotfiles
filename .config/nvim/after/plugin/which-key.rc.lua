local wk = require("which-key")
wk.setup({})
wk.register({
	f = {
		name = "find",
		f = { "<cmd>Telescope find_files<CR>", "Find File" },
		b = { "<cmd>Telescope buffers<CR>", "Find Buffers" },
		g = { "<cmd>Telescope live_grep<CR>", "Find Buffers" },
		r = { "<cmd>Telescope resume<CR>", "Resume" },
	},
	b = {
		name = "buffer",
		k = { "<cmd>:bd<CR>", "Kill buffer" },
		n = { "<cmd>:bnext<CR>", "Next buffer" },
		p = { "<cmd>:bprevious<CR>", "Prev buffer" },
	},
	t = {
		name = "Tree",
		t = { "<cmd>:NvimTreeToggle<CR>", "Toggle Tree" },
	},
}, { prefix = "<leader>" })

wk.register({
	g = {
		name = "Code",
		d = { "<cmd>Lspsaga lsp_finder<CR>", "Find definition" },
		h = { "<cmd>Lspsaga hover_doc<CR>", "Hover" },
		a = { "<cmd>Lspsaga code_action<CR>", "Code Action" },
		r = { "<cmd>Lspsaga rename<CR>", "Rename" },
		b = { "<cmd>Gitsigns blame_line<CR>", "Blame" },
		k = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
		t = {
			name = "TypeScript",
			u = { "<cmd>TypescriptRemoveUnused<CR>", "Remove Unused" },
			o = { "<cmd>TypescriptOrganizeImports<CR>", "Sort Imports" },
			i = { "<cmd>TypescriptAddMissingImports<CR>", "Fix Imports" },
		},
	},
	["<Tab>"] = { "<cmd>BufferLineCycleNext<CR>", "Next buffer" },
	["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<CR>", "Prev buffer" },
})
