if (isNil "RTO_Loaded") then
{
	[] call RTO_fnc_init;
};

_rx = [];
{
	_rx pushBackUnique ((_x getVariable ["RTO_Data",[]]) select 2);
} forEach RTO_ObjList;
_res = [];

{
	_n1 = _x;
	{
		_res pushBackUnique ([_n1,_x] call RTO_fnc_mcd);
	} forEach _rx;
} forEach _rx;

_res sort true;
RTO_Resolution = _res select 0;