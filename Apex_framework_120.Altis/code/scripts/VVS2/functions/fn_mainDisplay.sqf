/*
	File: fn_mainDisplay.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main functionality for the VVS Menu Display. Handles filters and more.
*/
private["_mode","_control","_row","_vehicleList","_checkBox","_position"];
disableSerialization;
waitUntil{!isNull (findDisplay 38100)};
if(isNil "VVS2_Cfg") then{_mode = "All";} else {_mode = VVS2_Cfg};

_control = ((findDisplay 38100) displayCtrl 38101);
if((lnbSize 38101) select 0 > -1) then
{
	lnbClear _control;
};

_position = getMarkerPos VVS2_SP;

_spCheck = nearestObjects[_position,["landVehicle","Air","Ship","Car"],12] select 0;
if(!isNil "_spCheck") then {deleteVehicle _spCheck;};

_vehicleList = [_mode] call VVS2_fnc_filterType;

_checkBox = ((findDisplay 38100) displayCtrl 38103);

if(VVS2_Checkbox) then
{
	_checkBox ctrlSetText "Yes";
	_checkBox ctrlSetTextColor [0,1,0,1];
}
	else
{
	_checkBox ctrlSetText "No";
	_checkBox ctrlSetTextColor [1,0,0,1];
};

//Fill out the filter menu.
if(_mode == "All") then
{
	{
		lbAdd[38102,_x];
		lbSetData[38102,(lbSize 38102)-1,_x];
	} foreach ["All","Car","Air","Ship","Armored","Autonomous","Support"];

	lbSetCurSel[38102,0];
}
	else
{
	ctrlShow[38102,false]; //Hide it.
	_row = 0;
	_vehicleList = [_mode] call VVS2_fnc_filterType;

	if(count _vehicleList == 0) exitWith {hint "There was an error and no vehicles could be fetched!"};
	{
		_cfgInfo = [_x] call VVS2_fnc_cfgInfo;
		if(count _cfgInfo > 0) then
		{
			_sideName = switch ((_cfgInfo select 5)) do {case 0: {"EAST"}; case 1: {"WEST"}; case 2: {"GUER"}; case 3: {"CIV"}; default {"UNKNOWN"}};
			_control lnbAddRow["",_cfgInfo select 3,_sideName,_cfgInfo select 4];
			_control lnbSetPicture[[_row,0],_cfgInfo select 2];
			_control lnbSetData[[_row,0],_x]; //Set the classname to index/column 0
			_control lnbSetData[[_row,1],(_cfgInfo select 3)]; //Set the displayName to index/column 1
			_row = _row + 1;
		};
	} foreach _vehicleList;
};
