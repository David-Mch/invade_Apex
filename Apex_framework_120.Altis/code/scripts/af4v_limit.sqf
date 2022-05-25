if (!isNil "SVAG_addaction") then
{

	SVAG_addaction = compileFinal " 
		player addAction [ 
			'<img image=""\AF4_SVAG\image\addaction.paa"" /> <t color=""#EEAA00"">AF4 SVAG</t>',
			{_dialog=createdialog 'AF4_SVAG'},
			nil,
			-1,
			false,
			true,
			'User19',
			'player inArea ""AF4V_Zone""',
			-1,
			false
		];

		SVAG_aviable = True; 
	";

	waitUntil { time > 5 && { !isNull player && { alive player } } };

	private _code = '_dialog=createdialog "AF4_SVAG"';

	{ 
		_vars = player actionParams _x; 
		private _text = _vars select 1;
		if (_text isEqualTo _code) exitWith 
		{ 
			player removeAction _x;
		}; 
	} forEach (actionIDs player);
	
	[] call SVAG_addaction;
};
