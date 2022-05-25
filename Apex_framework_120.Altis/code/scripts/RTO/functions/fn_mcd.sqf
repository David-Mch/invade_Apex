params ["_n1","_n2"];
	
if (_n1 < _n2) then { _nx = _n1; _n1 = _n2; _n2 = _nx; };

_x = _n1 mod _n2;
_r = _n2;
while { _x > 0 } do
{
	_r = _x;
	_x = _n2 mod _x;
	_n2 = _r;
};

_r