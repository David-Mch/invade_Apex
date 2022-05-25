params["_obj",["_time",nil],["_distance",nil],["_func",""],["_recycleCfg",[]]];

if (isNull _obj) exitWith { objNull };

[] call chk_fnc_init;

chk_Objects pushBack [_obj,typeOf _obj,getPos _obj,getDir _obj,getItemCargo _obj,getWeaponCargo _obj,getMagazineCargo _obj,getBackpackCargo _obj,getObjectTextures _obj,time,false,_time,_distance,_func,_recycleCfg];

_obj;