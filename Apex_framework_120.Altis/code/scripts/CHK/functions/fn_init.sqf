if (isServer) then
{
	if (isNil "CHK_thread") then
	{
		CHK_timeInterval = 10;			// cada cuanto se chequea. (seg)
		CHK_distance = 5;				// distancia a la cual se considera respawnear el item. (mts)
		CHK_respawnTime = 120;			// tiempo a esperar para respawnear el item (seg).
		CHK_recycleDist = 1000;			// distancia de chequeo para el reciclado (despawn) del objeto luego de moverse (mts de players)
		CHK_recycleTime = 600;			// tiempo a esperar antes de reciclar un objeto abandonado. (segs)
		CHK_recycleInterval = 30;		// cada cuanto tiempo hace el chequeo para reciclar el objeto. (segs)
		CHK_recycleIgnoreACER3F = true;	// si se activa, ignora eliminar la caja si esta dentro de un vehiculo por medio de ACE o R3F_log

		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		chk_Objects = [];
		chk_thread = [] spawn { [] call chk_fnc_timeCheck; };
		
		diag_log "CHK: Iniciado";
	};
};