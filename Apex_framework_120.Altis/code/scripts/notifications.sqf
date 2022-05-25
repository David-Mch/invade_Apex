if !(hasInterface) exitWith { false };

NOTIF_width = 0.250000 * safezoneW; 
NOTIF_height = 0.0850000 * safezoneH; 
NOTIF_top = safezoneY + (NOTIF_height * 1);
NOTIF_center = (safezoneW / 2) + safezoneX;
NOTIF_left = NOTIF_center - (NOTIF_width / 2);

NOTIF_fadeInTime = 0.5;
NOTIF_fadeOutTime = 0.4;

NOTIF_index = 70000;

NOTIF_GROUP = { _this };
NOTIF_BGT = { _this + 1 };
NOTIF_BGM = { _this + 2 };
NOTIF_BG1 = { _this + 3 };
NOTIF_BG2 = { _this + 4 };
NOTIF_IMG = { _this + 5 };
NOTIF_TITLE = { _this + 6 };
NOTIF_MSG = { _this + 7 };


test_case = [
			/*/color array/*/ 				[(profileNamespace getVariable ['IGUI_TEXT_RGB_R',0]),(profileNamespace getVariable ['IGUI_TEXT_RGB_G',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_B',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_A',0.8])],
			/*/colorIconPicture array/*/	[(profileNamespace getVariable ['IGUI_TEXT_RGB_R',0]),(profileNamespace getVariable ['IGUI_TEXT_RGB_G',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_B',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_A',0.8])],
			/*/colorIconText array/*/ 		[(profileNamespace getVariable ['IGUI_TEXT_RGB_R',0]),(profileNamespace getVariable ['IGUI_TEXT_RGB_G',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_B',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_A',0.8])],
			/*/description string/*/ 		'%2',
			/*/difficulties array/*/ 		[],
			/*/duration number/*/ 			5,
			/*/iconPicture string/*/ 		'\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa',
			/*/iconText string/*/ 			'',
			/*/iconSize number/*/			1,
			/*/priority number/*/ 			5,
			/*/sound string/*/ 				'QS_audio_notification_2',
			/*/soundClose string/*/ 		'QS_audio_notification_2Close',
			/*/soundRadio string/*/ 		'',
			/*/title string/*/ 				'TASK ASSIGNED'
		];


NOTIF_add = {
	if (isNil "NOTIF_handle") then
	{
		NOTIF_handle = [] spawn {
			waitUntil { !(isNull (findDisplay 46) isEqualTo displayNull) };
			while { true } do {
				waitUntil { !((missionNamespace getVariable ['NOTIF_QUEUE',[]]) isEqualTo []) };
				[] call NOTIF_main;
			};
		};
	};

	params ["_cfgTemplate","_args"];
	_cfgTemplate params [
		'_color',
		'_colorIconPicture',
		'_colorIconText',
		'_description',
		'_difficulty',
		'_duration',
		'_iconPicture',
		'_iconText',
		'_iconSize',
		'_priority',
		'_sound',
		'_soundClose',
		'_soundRadio',
		'_title'
	];

	_str = _args joinString "','";
	_title = call compile format["format['%1','%2']",_title,_str];
	_description = call compile format["format['%1','%2']",_description,_str];

	_queue = missionNamespace getVariable ['NOTIF_QUEUE',[]];
	_queue resize (_priority max (count _queue));
	if (isNil {_queue select _priority}) then {
		_queue set [_priority,[]];
	};

	_data = [_title,_iconPicture,_iconText,_description,_color,_colorIconPicture,_colorIconText,_duration,_priority,_args,_sound,_soundClose,_soundRadio,_iconSize];
	(_queue select _priority) pushBack _data;
	missionNamespace setVariable ['NOTIF_QUEUE',_queue];
};

NOTIF_main = {
	_queue = missionNamespace getVariable ['NOTIF_QUEUE',[]];
	for [{_i = (count _queue) - 1},{_i >= 0 },{_i = _i - 1}] do
	{
		//systemChat format["_i : %1 --- %2 --- %3 --- %4",_i,_queue select _i,isNil {_queue select _i},count (_queue select _i)];
		if (!(isNil {_queue select _i}) && { (count (_queue select _i) > 0) }) then
		{
			_queuePriority = (_queue select _i);
			_x = _queuePriority select 0;
			if !(isNil "_x") then
			{
				_x params [
					'_title',
					'_iconPicture',
					'_iconText',
					'_description',
					'_color',
					'_colorIconPicture',
					'_colorIconText',
					'_duration',
					'_priority',
					'_args',
					'_sound',
					'_soundClose',
					'_soundRadio',
					'_iconSize'
				];

				_queuePriority deleteAt 0;
				if (_queuePriority isEqualTo []) then
				{
					_queuePriority = nil;
				};

				_x call NOTIF_create;
			};
		}
		else
		{
			//systemChat format["count _queue: %1 --- %2",count _queue,_i];
			if (count _queue - 1 isEqualTo _i) then
			{
				_queue resize (count _queue - 1);
			};
		};
	};
};

NOTIF_create = {
	params [
		'_title',
		'_iconPicture',
		'_iconText',
		'_description',
		'_color',
		'_colorIconPicture',
		'_colorIconText',
		'_duration',
		'_priority',
		'_args',
		'_sound',
		'_soundClose',
		'_soundRadio',
		'_iconSize'
	];
	
	/*_str = "";
	{
		_str = format["%1 -- %2:%3",_str,_x,call compile _x];
	} forEach [
		'_title',
		'_iconPicture',
		'_iconText',
		'_description',
		'_color',
		'_colorIconPicture',
		'_colorIconText',
		'_duration',
		'_priority',
		'_args',
		'_sound',
		'_soundClose',
		'_soundRadio',
		'_iconSize'
	]; systemChat format["RES: %1",_str];*/
	
	//systemChat format["NOTIF_create: %1",_this];

	_display = (findDisplay 46);
	if (isNull _display) exitWith { false };
	
	_idGroup = NOTIF_index;
	NOTIF_index = NOTIF_index + 8;
	_ids = [];
	
	if !(_sound isEqualTo '') then
	{
		playSound _sound;
	};
	
	_id = _display ctrlCreate ["RscControlsGroupNoScrollbars", (_idGroup call NOTIF_GROUP)];
	_id ctrlSetFade 1;
	_ids pushBack _id;
	
	if (_color isEqualTo [(profileNamespace getVariable ['IGUI_TEXT_RGB_R',0]),(profileNamespace getVariable ['IGUI_TEXT_RGB_G',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_B',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_A',0.8])]) then
	{
		_color = [1,0.6,0,1];
	};
	
	
	_bgt = nil;
	if !(_title isEqualTo '') then
	{
		_bgt = _display ctrlCreate ["RscText", (_idGroup call NOTIF_BGT), _id];
		_bgt ctrlSetBackgroundColor [0,0,0,0.5];
		_ids pushBack _bgt;

		_bg1 = _display ctrlCreate ["RscText", (_idGroup call NOTIF_BG1), _id];
		_bg1 ctrlSetPosition [0, 0, 0.015, NOTIF_height * 0.25];
		_bg1 ctrlSetBackgroundColor _color;
		_bg1 ctrlCommit 0;
		_ids pushBack _bg1;
	};
	
	_wim = NOTIF_height - (NOTIF_height * 0.25 + 0.02) * _iconSize;
	_wibg = _wim * 0.3;

	_bgm = _display ctrlCreate ["RscText", (_idGroup call NOTIF_BGM), _id];
	_bgm ctrlSetBackgroundColor [0,0,0,0.5];
	_ids pushBack _bgm;

	_bg2 = _display ctrlCreate ["RscText", (_idGroup call NOTIF_BG2), _id];
	_bg2 ctrlSetBackgroundColor _color;
	_ids pushBack _bg2;
	
	_im = nil;
	_im1 = nil;
	_im2 = nil;
	if (_iconPicture != '') then
	{
		_im1 = _display ctrlCreate ["RscPictureKeepAspect", -1, _id];
		_im1 ctrlSetTextColor [1,1,1,1];
		_im1 ctrlSetText _iconPicture;
		_im2 = _display ctrlCreate ["RscPictureKeepAspect", -1, _id];
		_im2 ctrlSetTextColor [0,0,0,1];
		_im2 ctrlSetText _iconPicture;

		_im = _display ctrlCreate ["RscPictureKeepAspect", (_idGroup call NOTIF_IMG), _id];
		if !(_colorIconPicture isEqualTo [(profileNamespace getVariable ['IGUI_TEXT_RGB_R',0]),(profileNamespace getVariable ['IGUI_TEXT_RGB_G',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_B',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_A',0.8])]) then
		{
			_im ctrlSetTextColor _colorIconPicture;
		};
		_im ctrlSetText _iconPicture;
		_ids pushBack _im;
	};
	
	_ttw = nil;
	if !(_title isEqualTo '') then
	{
		_tt = _display ctrlCreate ["RscStructuredText", (_idGroup call NOTIF_TITLE), _id];
		_tt ctrlSetTextColor _color;
		_tt ctrlSetStructuredText parseText format["<t size='%1' align='left' font='PuristaMedium'>%2</t>",0.9,toUpper(_title)];
		_ttw = 0.025 + (ctrlTextWidth _tt) + 0.025;
		_tt ctrlSetPosition [0.025, 0, (NOTIF_width - 0.025) max _ttw, NOTIF_height * 0.25];
		_tt ctrlCommit 0;
		_ids pushBack _tt;
	};
	
	_ms = _display ctrlCreate ["RscStructuredText", (_idGroup call NOTIF_MSG), _id];
	_ms ctrlSetTextColor [1, 1, 1, 1];
	_ms ctrlSetStructuredText parseText format["<t size='%1' align='left' font='PuristaMedium'>%2</t>",1.2,_description];
	_msw = 0.025 + _wim + (ctrlTextWidth _ms) + 0.025;
	_ms ctrlSetPosition [0.025 + _wim, NOTIF_height * 0.25 + 0.02 + (_wibg / 2), safezoneW * 0.5, NOTIF_height * 0.50 - (_wibg / 2)];
	_ms ctrlCommit 0;

	_msh = ctrlTextHeight _ms + 0.005;
	_ms ctrlSetPosition [0.025 + _wim, NOTIF_height * 0.25 + 0.02 + (_wibg / 2), (NOTIF_width - (0.09 + _wim + 0.09)) max _msw, _msh];
	_ms ctrlCommit 0;
	_ids pushBack _ms;
	
	_bgm ctrlSetPosition [0, NOTIF_height * 0.25 + 0.02 + (_wibg / 2), (NOTIF_width max _msw), _msh];
	_bgm ctrlCommit 0;
	
	_bg2 ctrlSetPosition [0, NOTIF_height * 0.25 + 0.02 + (_wibg / 2), 0.015, _msh];
	_bg2 ctrlCommit 0;
	
	if (_iconPicture != '') then
	{
		_imh = (NOTIF_height * 0.25 + 0.02 + (_wibg / 2)) + ((_msh) / 2) - (_wim / 2);

		_im1 ctrlSetPosition [0.025 - 0.001, _imh - 0.001, _wim, _wim];
		_im1 ctrlCommit 0;
		_ids pushBack _im1;

		_im2 ctrlSetPosition [0.025 + 0.001, _imh + 0.001, _wim, _wim];
		_im2 ctrlCommit 0;
		_ids pushBack _im2;

		_im ctrlSetPosition [0.025, _imh, _wim, _wim];	
		_im ctrlCommit 0;
	};
	
	if !(_title isEqualTo '') then
	{
		_bgt ctrlSetPosition [0, 0, _ttw, NOTIF_height * 0.25];
		_bgt ctrlCommit 0;
	};
	
	_left = NOTIF_left min (NOTIF_center - (_msw / 2));
	_height = (NOTIF_height * 0.25 + 0.02 + (_wibg / 2) + (_msh)) max NOTIF_height;
	
	_id ctrlSetPosition [_left, NOTIF_top - NOTIF_height, (NOTIF_width max _msw), _height];
	_id ctrlCommit 0;

	_id ctrlSetPosition [_left, NOTIF_top, (NOTIF_width max _msw), _height];
	_id ctrlSetFade 0;
	_id ctrlCommit NOTIF_fadeInTime;

	waitUntil { ctrlCommitted _id };
	sleep _duration;

	if !(_soundClose isEqualTo '') then
	{
		playSound _soundClose;
	};

	_id ctrlSetPosition [_left, NOTIF_top + NOTIF_height + 0.03, (NOTIF_width max _msw), _height];
	_id ctrlSetFade 1;
	_id ctrlCommit NOTIF_fadeOutTime;

	[_ids,_id] spawn {
		waitUntil { ctrlCommitted (_this select 1) };
		{
			ctrlDelete _x;
		} forEach (_this select 0);
	};
};

