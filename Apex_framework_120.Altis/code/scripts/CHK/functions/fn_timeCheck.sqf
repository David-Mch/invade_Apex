private ["_newObj"];

while {true} do
{
	sleep chk_timeInterval;

	{
		_x params ["_obj","_type","_pos","_dir","_items","_weapons","_mags","_backpacks","_textures","_time","_respawn",["_respawnTime",chk_respawnTime],["_distance",chk_distance],["_func",""],["_recycleCfg",[]]];

		if (_respawn) then
		{
			if (time >= _time + _respawnTime) then
			{
				//// ORIGINAL SE MOVIO, CREO EL OBJETO NUEVO EN LA POSICION DEL ORIGINAL
				_newObj = createVehicle [_type, [0,0,5000], [], 0, "CAN_COLLIDE"];

				chk_Objects set [_forEachIndex,[_newObj,_type,_pos,_dir,_items,_weapons,_mags,_backpacks,_textures,time,false,_respawnTime,_distance,_func,_recycleCfg]];

				{
					_newObj setObjectTextureGlobal [_forEachIndex,_x];
				} forEach _textures;

				_newObj setDir _dir;

				clearWeaponCargoGlobal _newObj;
				clearMagazineCargoGlobal _newObj;
				clearItemCargoGlobal _newObj;
				clearBackpackCargoGlobal _newObj;

				{
					_newObj addItemCargoGlobal [_x,(_items select 1) select _forEachIndex];
				} forEach (_items select 0);
				
				{
					_newObj addWeaponCargoGlobal [_x,(_weapons select 1) select _forEachIndex];
				} forEach (_weapons select 0);
				
				{
					_newObj addMagazineCargoGlobal [_x,(_mags select 1) select _forEachIndex];
				} forEach (_mags select 0);
				
				{
					_newObj addBackpackCargoGlobal [_x,(_backpacks select 1) select _forEachIndex];
				} forEach (_backpacks select 0);

				if !(isNull _obj) then
				{
					if (alive _obj) then
					{
						//// AGREGO EL OBJETO ORIGINAL AL AUTORECYCLE
						([_obj] + _recycleCfg) call CHK_fnc_autoRecycle;
					}
					else
					{
						deleteVehicle _obj;
					};
				};

				//// PONGO EL OBJETO NUEVO EN LA POSICION DEL ORIGINAL
				_newObj setPos _pos;

				if (!(isNil "_func") && { (typeName _func isEqualTo "STRING") } ) then
				{
					_this = _newObj;
					call compile _func;
				};
			};
		}
		else
		{
			if (isNull _obj || { !(alive _obj) || { (_pos distance getPos _obj) > _distance } } ) then
			{
				chk_Objects set[_forEachIndex,[_obj,_type,_pos,_dir,_items,_weapons,_mags,_backpacks,_textures,time,true,_respawnTime,_distance,_func,_recycleCfg]];
			};
		};
		
	} forEach chk_Objects;
};