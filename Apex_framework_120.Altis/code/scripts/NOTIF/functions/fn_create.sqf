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

_display = (findDisplay 46);
if (isNull _display) exitWith { false };

_idGroup = NOTIF_index;
NOTIF_index = NOTIF_index + 1;
_ids = [];

if !(_sound isEqualTo '') then
{
	playSound _sound;
};

_id = _display ctrlCreate ["RscControlsGroupNoScrollbars", _idGroup];
_id ctrlSetFade 1;
_ids pushBack _id;

if (_color isEqualTo [(profileNamespace getVariable ['IGUI_TEXT_RGB_R',0]),(profileNamespace getVariable ['IGUI_TEXT_RGB_G',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_B',1]),(profileNamespace getVariable ['IGUI_TEXT_RGB_A',0.8])]) then
{
	_color = [1,0.6,0,1];
};


_bgt = nil;
if !(_title isEqualTo '') then
{
	_bgt = _display ctrlCreate ["RscText", -1, _id];
	_bgt ctrlSetBackgroundColor [0,0,0,0.5];
	_ids pushBack _bgt;

	_bg1 = _display ctrlCreate ["RscText", -1, _id];
	_bg1 ctrlSetPosition [0, 0, 0.015, NOTIF_height * 0.25];
	_bg1 ctrlSetBackgroundColor _color;
	_bg1 ctrlCommit 0;
	_ids pushBack _bg1;
};

_wim = NOTIF_height - (NOTIF_height * 0.25 + 0.02) * _iconSize;
_wibg = _wim * 0.3;

_bgm = _display ctrlCreate ["RscText", -1, _id];
_bgm ctrlSetBackgroundColor [0,0,0,0.5];
_ids pushBack _bgm;

_bg2 = _display ctrlCreate ["RscText", -1, _id];
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

	_im = _display ctrlCreate ["RscPictureKeepAspect", -1, _id];
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
	_tt = _display ctrlCreate ["RscStructuredText", -1, _id];
	_tt ctrlSetTextColor _color;
	_tt ctrlSetStructuredText parseText format["<t size='%1' align='left' font='PuristaMedium'>%2</t>",0.9,toUpper(_title)];
	_ttw = 0.025 + (ctrlTextWidth _tt) + 0.025;
	_tt ctrlSetPosition [0.025, 0, (NOTIF_width - 0.025) max _ttw, NOTIF_height * 0.25];
	_tt ctrlCommit 0;
	_ids pushBack _tt;
};

_ms = _display ctrlCreate ["RscStructuredText", -1, _id];
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
	} forEach (reverse (_this select 0));
};