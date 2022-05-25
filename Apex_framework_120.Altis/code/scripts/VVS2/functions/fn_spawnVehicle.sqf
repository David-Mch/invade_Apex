/*
	File: fn_spawnVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Spawns the selected vehicle, if a vehicle is already on the spawn point
	then it deletes the vehicle from the spawn point.
*/
disableSerialization;
private["_position","_direction","_className","_displayName","_spCheck","_cfgInfo"];
if(lnbCurSelRow 38101 == -1) exitWith {hint "You did not select a vehicle to spawn!"};

_className = lnbData[38101,[(lnbCurSelRow 38101),0]];
_displayName = lnbData[38101,[(lnbCurSelRow 38101),1]];
_position = getMarkerPos VVS2_SP;
_direction = markerDir VVS2_SP;

//Make sure the marker exists in a way.
if(isNil "_position") exitWith {hint "The spawn point marker doesn't exist?";};

//Check to make sure the spawn point doesn't have a vehicle on it, if it does then delete it.
// _spCheck = nearestObjects [_position, ["landVehicle", "Air", "Ship"], 12];  //select 0;

{if (count crew _x == 0) then {deletevehicle _x};} foreach (nearestObjects [_position, ["landVehicle", "Air", "Ship"], 20]);

//if(!isNil "_spCheck") then {{deleteVehicle _x;} forEach _spCheck;};

_cfgInfo = [_className] call VVS2_fnc_cfgInfo;

_vehicle = _className createVehicle _position;
_vehicle allowDamage false;
_vehicle setPos _position; //Make sure it gets set onto the position.
_vehicle setDir _direction; //Set the vehicles direction the same as the marker.

if((_cfgInfo select 4) == "Autonomous") then
{
	createVehicleCrew _vehicle;
};

if(VVS2_Checkbox) then
{
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargo _vehicle;
	_vehicle addBackpackCargoGlobal ["B_Mortar_01_Weapon_F",1];
	_vehicle addBackpackCargoGlobal ["B_Mortar_01_Support_F",1];
	_vehicle addWeaponCargoGlobal["launch_B_Titan_short_F",2];
	_vehicle addItemCargoGlobal ["Medikit", 1];
	_vehicle addItemCargoGlobal ["Toolkit", 1];
	_vehicle addMagazineCargoGlobal ["Titan_AT", 8];
	_vehicle addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 8];
	_vehicle addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
	_vehicle addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_tracer", 10];
	_vehicle addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 15];
	_vehicle addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 4];
	_vehicle addMagazineCargoGlobal ["150Rnd_93x64_Mag", 4];
	_vehicle addMagazineCargoGlobal ["20Rnd_762x51_Mag", 20];
	_vehicle addMagazineCargoGlobal ["7Rnd_408_Mag", 15];
	_vehicle addMagazineCargoGlobal ["10Rnd_338_Mag", 15];
	_vehicle addMagazineCargoGlobal ["5Rnd_127x108_Mag", 15];
	_vehicle addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 15];
	// _vehicle addMagazineCargoGlobal ["5Rnd_127x108_APDS_Mag", 5];
	_vehicle addMagazineCargoGlobal ["HandGrenade", 10];
	_vehicle addMagazineCargoGlobal ["SmokeShell", 3];
	_vehicle addMagazineCargoGlobal ["SmokeShellRed", 3];
	_vehicle addMagazineCargoGlobal ["SmokeShellGreen", 3];
	_vehicle addMagazineCargoGlobal ["SmokeShellYellow", 3];
	_vehicle addMagazineCargoGlobal ["SmokeShellPurple", 3];
	_vehicle addMagazineCargoGlobal ["SmokeShellBlue", 3];
	_vehicle addMagazineCargoGlobal ["SmokeShellOrange", 3];
};

_vehicle allowDamage true;
//hint format["You have spawned a %1",_displayName];
closeDialog 0;
/*
	// ----- Remove weapons from VTOLs
	if (typeof _vehicle in ["O_T_VTOL_02_infantry_grey_F","O_T_VTOL_02_vehicle_grey_F"]) then
	{
		// _vehicle removeWeaponTurret ["gatling_30mm_VTOL_02",[0]]; 
		_vehicle removeWeaponTurret ["missiles_SCALPEL",[0]]; 
		_vehicle removeWeaponTurret ["rockets_Skyfire",[0]];
	};
*/


