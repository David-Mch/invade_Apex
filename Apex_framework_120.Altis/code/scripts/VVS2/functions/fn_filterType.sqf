/*
	File: fn_filterType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Filters through the incoming request and also checks if the side restriction is enabled.
*/
private["_filter","_ret","_vehicleList"];
_filter = [_this,0,"",[""]] call BIS_fnc_param;
if(_filter == "") exitWith {[]};

//Setup our array.
_ret = [];

_vehicleList = switch(_filter) do
{
	case "All": {(VVS2_pre_Car + VVS2_pre_Air + VVS2_pre_Ship + VVS2_pre_Armored + VVS2_pre_Support + VVS2_pre_Autonomous + VVS2_pre_ArmedHeli)};
	case "Car": {VVS2_pre_Car};
	case "Air": {VVS2_pre_Air};
	case "Ship": {VVS2_pre_Ship};
	case "Armored": {VVS2_pre_Armored};
	case "Autonomous": {VVS2_pre_Autonomous};
	case "Support": {VVS2_pre_Support};
	case "ArmedHeli": {VVS2_pre_ArmedHeli};
	default {[]};
};

if(count _vehicleList == 0) exitWith {[]};
{
	_cfgInfo = [_x] call VVS2_fnc_cfgInfo;
	if(count _cfgInfo > 0) then
	{
		if(VVS2_SideOnly) then
		{
			_side = switch((_cfgInfo select 5)) do
			{
				case 0: {east};
				case 1: {west};
				case 2: {resistance};
				case 3: {civilian};
				default {sideUnknown};
			};
			
			if(_side == playerSide) then
			{
				_ret set[count _ret,_x];
			};
		}
			else
		{
			_ret set[count _ret,_x];
		};
	};
} foreach _vehicleList;

_ret;