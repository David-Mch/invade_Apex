if (!isDedicated) exitWith {};
missionNamespace setVariable ['QS_fnc_whitelist',(compileScript ['@Apex_cfg\whitelist.sqf',TRUE]),TRUE];
call (compileScript ['@Apex_cfg\parameters.sqf']);
0 spawn (missionNamespace getVariable 'QS_fnc_config');
missionNamespace setVariable ['ASL_HEAVY_LIFTING_MIN_LIFT_OVERRIDE',0];


//=============CUERDAS=======================
//[] execVM "code\scripts\cuerdas\fn_advancedTowingInit.sqf";
[] execVM "code\scripts\cuerdas\fn_advancedSlingLoadingInit.sqf";
[] execVM "code\scripts\cuerdas\fn_advancedUrbanRappellingInit.sqf";
//[] execVM "code\scripts\cuerdas\fn_advancedRappellingInit.sqf";

 //=============Rectificador de color=======================
"ColorCorrections" ppEffectEnable true;
"ColorCorrections" ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]];
"ColorCorrections" ppEffectCommit 0;

0 fadeRadio 0;
	[
60, // segundos para borrar cadáveres (0 significa no borrar)
10, // segundos para borrar vehículos muertos (0 significa no borrar)
0, // segundos para borrar vehículos inmóviles (0 significa no borrar)
2 * 60, // segundos para borrar las armas abandonadas (0 significa no borrar)
10 * 60, // segundos para eliminar explosivos plantados (0 significa no borrar)
60 // segundos para borrar los humos / chemlights (0 significa no borrar)
	] execVM 'code\scripts\repetitive_cleanup.sqf';		