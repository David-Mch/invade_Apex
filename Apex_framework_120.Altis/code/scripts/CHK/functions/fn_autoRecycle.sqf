_this spawn {
	params ["_object",["_dist",CHK_recycleDist],["_despawnTime",CHK_recycleTime],["_interval",CHK_recycleInterval]];
	private ["_obj","_time","_cargo","_r3fveh","_attachedto"];

	_time = time;
	while { !(isNull _object) && { alive _object } } do {
		_attachedto = objNull;
		_obj = _object;

		_r3fveh = _obj getVariable ["r3f_log_est_transporte_par",objNull];
		if (!(isNull _r3fveh) && { alive _attachedto }) then
		{
			_obj = _r3fveh;
		}
		else
		{
			_attachedto = attachedto _obj;
			if (!(isNull _attachedto) && { alive _attachedto }) then
			{
				_obj = _attachedto;
			};
		};

		///////////////////// DISTANCIA A COMPROBAR PLAYERS
		{
			if (((getPosATL _x) distance (getPosATL _obj)) < _dist) exitWith { _time = time; true };
		} forEach allPlayers;

		///////////////////// CHEQUEO DE TIEMPO ABANDONADO
		if (CHK_recycleIgnoreACER3F) then
		{
			if ((time >= _time + _despawnTime) && { (isNull _attachedto) && { (isNull _r3fveh) } }) exitWith {
				deleteVehicle _object;
			};
		}
		else
		{
			if (time >= _time + _despawnTime) exitWith {
				if !(isNull _attachedto) then
				{
					_cargo = _attachedto getVariable["ace_cargo_loaded",[]];
					_cargo = _cargo - [_obj];
					_attachedto setVariable["ace_cargo_loaded",_cargo];
				}
				else
				{
					if !(isNull _r3fveh) then
					{
						_cargo = _r3fveh getVariable ["R3F_LOG_objets_charges", []];
						_cargo = _cargo - [_object];
						_r3fveh setVariable ["R3F_LOG_objets_charges", _cargo, true];
						_object setVariable ["R3F_LOG_est_transporte_par", objNull, true];
					};
				};

				deleteVehicle _object;
			};
		};

		///////////////////// INTERVALO DE CHEQUEO
		sleep _interval;
	};
};