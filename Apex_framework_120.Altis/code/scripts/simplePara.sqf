	/*
		Author: HallyG
		Spawns a supply drop of desired object.

		Arguments(s):
		0: Supply Drop Object to paradrop
		- <STRING>
		1: Supply Drop Centre - <MARKER, OBJECT, LOCATION, GROUP, TASK, POSITION>
		2: Supply Drop Height - <SCALAR>
		3: Supply Drop attachTo Position - <ARRAY>
		4: Vehicle - Vehicle dropping the supply (to get speed/dir of fall)

		Return Value:
		<OBJECT>
		
		Example:
		[
			Crate,
			position player,
			100,
			[0,0,-1.2],
			heli
		] call FUNCTIONNAME
	__________________________________________________________________*/

if (hasInterface) then
{
	PARA_fnc_simplePara = {
		params [
			["_object", objNull, [objNull]],
			["_centre", [0, 0, 0], ["", objNull, taskNull, locationNull, [], grpNull], [3]],
			["_height", 100, [0]],
			["_attachTo", [0, 0, -1.2], [[]], [3]],
			["_vehicle", objNull, [objNull]]
		];

		_centre = _centre call {
			if (_this isEqualType objNull) exitWith {getPosASL _this};
			if (_this isEqualType grpNull) exitWith {getPosASL (leader _this)};
			if (_this isEqualType "") exitWith {getMarkerPos _this};
			if (_this isEqualType locationNull) exitWith {locationPosition _this};
			if (_this isEqualType taskNull) exitWith {taskDestination  _this};
			if (_this isEqualType []) exitWith {_this};
			[0, 0, 0]
		};

		if (isNull _object || _centre isEqualTo [0, 0, 0]) exitWith {
			objNull
		};


		if !(isNull _vehicle) then 
		{
			_object setpos ((position _vehicle) vectorAdd [0, 0, -5]);
			_object setVelocity ((velocity _vehicle) vectorAdd [0,0,-1]);
		} else
		{
			_object setpos (_centre vectorAdd [0, 0, _height]);
		};

		[_object,_attachTo,_vehicle] spawn {
			params ["_object","_attachTo","_vehicle"];
			
			sleep 3;
			
			if !(((position _object) select 2) < 2 || (isTouchingGround  _object)) then
			{

				//private _obj = createVehicle [_object, _centre vectorAdd [0, 0, _height], [], 0, "NONE"]; 
				private _para = createVehicle ["B_Parachute_02_F", position _object, [], 0, "FLY"];
				_para disableCollisionWith _object;
				_para disableCollisionWith _vehicle;
				_para setDir getDir _object;
				_para setPos getPos _object;
				_para setVelocity (velocity _obj);
				_object attachTo [_para, _attachTo];

				waitUntil {
					sleep 0.01;
					((position _object) select 2) < 2 || (isTouchingGround  _object)
				};
					
				_object setVectorUp [0,0,1];
				_object setVelocity [0,0,0];
				detach _object;

				if (!isNull _para) then {deleteVehicle _para};
			};

			if (alive _object) then
			{
				_smoke = "SmokeShellRed" createVehicle [0,0,0];
				_flare = "O_IRStrobe" createVehicle [0,0,0];
				hideObjectGlobal _smoke;
				_flare attachTo [_object,[0,0,0]];	
				_smoke attachTo [_object,[0,0,0]];
			};
		};

		_object 
	};

	paraDropActionID = nil;
	paraDropActionTitle = "";

	PARA_fnc_check = {
		private _ret = false;
		if (alive player && { !((vehicle player) isEqualTo player) && { ((vehicle player) isKindOf "Air") && { (player isEqualTo (currentPilot (vehicle player))) && { (position (vehicle player)) select 2 > -10 } } } }) then
		{
			private _objs = (vehicle player) getVariable ["r3f_log_objets_charges",[]];
			if !(_objs isEqualTo []) exitWith {
				private _name = getText (configFile >> "CfgVehicles" >> typeOf (_objs select 0) >> "displayName");
				paraDropActionTitle = format["<t color='#BB7500'>&gt;&gt; Paradrop </t> <t color='#FFA500'>%1</t>",_name];
				if !(isNil "paraDropActionID") then
				{
					player setUserActionText [paraDropActionID,paraDropActionTitle];
				};

				_ret = true;
			};
		};

		_ret;
	};
	
	PARA_fnc_R3FParaItem = {
		params["_veh"];
		private["_objs","_obj"];

		_objs = _veh getVariable ["R3F_LOG_objets_charges", []];
		_obj = _objs select 0;
		if !(isNull _obj) then {
			_objs = _objs - [_obj];
			_veh setVariable ["R3F_LOG_objets_charges", _objs, true];
			_obj setVariable ["R3F_LOG_est_transporte_par", objNull, true];
			detach _obj;

			[_obj,position (vehicle player),100,[0,0,-1.2],(vehicle player)] call PARA_fnc_simplePara;
		};
	};
	
	PARA_fnc_addAction = {
		paraDropActionID = player addAction [
			paraDropActionTitle,
			{ (vehicle player) call PARA_fnc_R3FParaItem },
			nil,
			1.5,
			false,
			false,
			"",
			"call PARA_fnc_check"
		];
	};

	call PARA_fnc_addAction;
	
	player addEventHandler ["Respawn", {
		params ["_unit", "_corpse"];

		call PARA_fnc_addAction;
	}];
};
