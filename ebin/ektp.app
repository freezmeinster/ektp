{application, 'ektp', [
	{description, "EKTP Project for better future"},
	{vsn, "0.1.0"},
	{modules, ['ektp_app','ektp_sup','frontend_handler','person_handler']},
	{registered, [ektp_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {ektp_app, []}},
	{env, []}
]}.