params["_obj","_chk","_dist","_action"];

if ((isNil "_chk") || { (_chk isEqualTo 0) }) then
{
	if (isNil "_chk") then
	{
		_chk = 30;
	}
	else
	{
		_chk = 1;
	};
};

if (isNil "_dist") then
{
	_dist = 100;
};

if (isNil "_action") then
{
	_action = "RETURN REFRESH";
};

if (isNil "RTO_Loaded") then
{
	[] call RTO_fnc_init;
};

_obj setVariable["RTO_Data",[time,0,_chk,_dist,getPosATL _obj,vectorDir _obj,vectorUp _obj,_action]];

RTO_ObjList pushBackUnique _obj;

[] call RTO_fnc_resetMcd;