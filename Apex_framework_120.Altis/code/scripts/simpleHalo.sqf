///// Simple Halo by Alez

if !(hasInterface) exitWith { false };

params ["_obj"];

simpleHalo_JumpHeight = 800;
simpleHalo_GroupJump = false;
simpleHalo_Color = "#ff0000";

simpleHalo_addAction = {
	params["_obj"];
	
	if ((isNil "_obj") || { (isNull _obj) }) exitWith
	{
		false;
	};
	
	_obj addAction [
		format["<img image='\A3\ui_f\data\map\VehicleIcons\iconparachute_ca.paa' /> <t color='%1'>Saltar en Paracaidas</t>",simpleHalo_Color],
		{
			{ params ["_pos"]; [player,_pos vectorAdd [0, 0, simpleHalo_JumpHeight],true,false,true] call COB_fnc_halo; } call map_click_selector;
		}
		,[],
		5,false, true,"","(count allPlayers) <= 15"
	];
};

/////    Agregar menu de salto a un objeto: 

/////	[objeto] call simpleHalo_addAction;


if (isNil "map_click_selector") then
{
	map_click_selector = {
		params["_func"];
		0 = [_func] spawn
		{
			params["_func"];
			if (!visibleMap) then {
				openMap true;
			};
			
			_timeOut = time + 5;
			waitUntil {visibleMap || _timeOut < time};

			if (!visibleMap) exitWith { systemChat "No puedo abrir el mapa!"; false };
			
			titleText ["Elija un sitio del mapa", "PLAIN"];

			mapCenterOnCamera ((findDisplay 12) displayCtrl 51);

			map_selector_handler =
			[
				"map_click_selector_handle", "onMapSingleClick",
				{
					_func = (_this select (count _this - 1));
					[_pos] call _func;
					["map_click_selector_handle", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
					openMap false;
					titleFadeOut 1;

					true
				},
				[_func]
			] call BIS_fnc_addStackedEventHandler;

			waitUntil { !visibleMap };

			titleFadeOut 1;

			["map_click_selector_handle", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
		};
	};
};

if (!(isNil "_obj") && { !(isNull _obj) }) then
{
	[_obj] call simpleHalo_addAction;
};
