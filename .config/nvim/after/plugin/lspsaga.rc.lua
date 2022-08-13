local status, saga = pcall(require,'lspsaga')
if (not status) then return end;


saga.init_lsp_saga({
	finder_request_timeout = 5000,
	rename_action_quit = "<esc>",
	rename_in_select = false,
	finder_action_keys = {
		quit = "<esc>",
	},
})

