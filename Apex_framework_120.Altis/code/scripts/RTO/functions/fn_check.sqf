{
	_obj = _x;
	_data = _obj getVariable ["RTO_Data",[]];

	if ((isNull _obj) || { (_data isEqualTo []) }) then
	{
		RTO_ObjList deleteAt	_forEachIndex;
		_forEachIndex = _forEachIndex - 1;

		[] call RTO_fnc_resetMcd;
	}
	else
	{
		_data params ["_time","_abandoned","_chk","_dist","_oriPos","_dir","_up","_action"];
	
		if !(alive _obj) then
		{
			deleteVehicle _obj;

			if !(isNull _obj) then
			{
				_obj = (typeOf _obj) createVehicle _oriPos;
				_obj setVectorDirAndUp [_dir,_up];
				_obj setVariable ["RTO_Data",[time,0,_chk,_dist,_oriPos,_dir,_up,_action]];
				_x = _obj;
			};
		}
		else
		{
			if !(_data isEqualTo []) then
			{
				if (_abandoned >= _chk) then
				{
					{
						switch (_x) do
						{
							case "RETURN":
							{
								_obj setPosATL _oriPos;
								_obj setVectorDirAndUp [_dir,_up];
								_obj setVariable ["RTO_Data",[time,0,_chk,_dist,_oriPos,_dir,_up,_action]];
							};
							case "DELETE":
							{
								deleteVehicle _obj;
								RTO_ObjList deleteAt _forEachIndex;
								_forEachIndex = _forEachIndex - 1;

								[] call RTO_fnc_resetMcd;
							};
							case "NEW":
							{
								_obj = (typeOf _obj) createVehicle _oriPos;
								_obj setVectorDirAndUp [_dir,_up];
								_obj setVariable ["RTO_Data",[time,0,_chk,_dist,_oriPos,_dir,_up,_action]];

								RTO_ObjList pushBackUnique _obj;
							};
							case "REFRESH":
							{
								_obj setDamage 0;
								_obj setVehicleAmmoDef 1;
							};
						};
					} forEach (_action splitString " ,");
				}
				else
				{
					if (time >= _chk + _time) then
					{
						_pos = getPosATL _obj;
						if !(_pos isEqualTo _oriPos) then
						{
							_f = objNull;
							{
								if ((getPosATL _x) distance _pos < _dist) exitWith { _f = _x };
							} forEach allPlayers - (entities "HeadlessClient_F");

							if (isNull _f) then
							{
								_abandoned = _abandoned + (time - _time);
							}
							else
							{
								_abandoned = 0;
							};

							_obj setVariable ["RTO_Data",[time,_abandoned,_chk,_dist,_oriPos,_dir,_up,_action]];
						};
					};
				};
			};
		};
	};
} forEach RTO_ObjList;