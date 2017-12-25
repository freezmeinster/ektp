{application, 'ektp', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['ektp_app','ektp_sup']},
	{registered, [ektp_sup]},
	{applications, [kernel,stdlib]},
	{mod, {ektp_app, []}},
	{env, []}
]}.