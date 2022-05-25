if !(hasInterface) exitWith { false };

if (isNil "NOTIF_handle") then
{
	NOTIF_handle = [] spawn {
		waitUntil { !(isNull (findDisplay 46) isEqualTo displayNull) };
		while { true } do {
			waitUntil { !((missionNamespace getVariable ['NOTIF_QUEUE',[]]) isEqualTo []) };
			[] call NOTIF_fnc_main;
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