zlo_VehicleInAsisstance = false;

zlo_condition = {
	params["_marker","_dist","_kind"];
	((getConnectedUAV player) distance (markerPos [_marker, true]) < _dist) && { ((getConnectedUAV player) isKindOf _kind) && { (alive getConnectedUAV player) && { (alive player) } } }
		|| { ((player distance (markerPos [_marker, true])) < _dist) && { (vehicle player != player) && { (vehicle player isKindOf _kind) && { (driver (vehicle player) isEqualTo player) && { (alive (vehicle player)) && { (alive player) } } } } } }
};

_zlo_add = { 
	params["_marker", "_dist", "_isKindOf"];
	player addAction [ 
		format["<img size='1' color='#7cf9f7' shadow='1' image='code\scripts\Zload\img\wr.paa'/><t color='#7cf9f7' size='1'>%1</t>",localize "zlo_service_name"],
		"code\scripts\Zload\fn_showDialog.sqf",
		[], 
		12, 
		true, 
		true, 
		"", 
		format["['%1',%2,'%3'] call zlo_condition",_marker,_dist,_isKindOf], 
		-1, 
		false
	];
}; 
 
["QS_marker_veh_baseservice_01",10,"Landvehicle"] call _zlo_add; /// vehicle service
["QS_marker_veh_baseservice_02",20,"Helicopter"] call _zlo_add; /// heli service
["QS_marker_veh_baseservice_03",40,"Plane"] call _zlo_add; /// plane service
["QS_marker_veh_baseservice_04",40,"Plane"] call _zlo_add; /// plane service

