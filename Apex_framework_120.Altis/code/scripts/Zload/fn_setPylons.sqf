/*
	author: DEXTER
	description: none
	returns: nothing
*/
disableSerialization;
private ["_veh","_magsCurrent","_typeVeh","_allPylonsNames","_counPylons","_equipedMag","_i","_ctrl"];
waitUntil{!isnull (findDisplay 456963);};
_veh = zlo_VehicleClass;
_typeVeh = (typeOf _veh);

_magsCurrent = getPylonMagazines (_veh);
_allPylonsNames = (configProperties [configFile >> "CfgVehicles" >> _typeVeh >> "Components" >> "TransportPylonsComponent" >> "Pylons"]) apply {configName _x};
_counPylons = count _allPylonsNames;
_i = 0;
//configfile >> "CfgVehicles" >> "B_Plane_CAS_01_dynamicLoadout_F" >> "Components" >> "TransportPylonsComponent" >> "uiPicture"

_ctrl = (findDisplay 456963) displayCtrl (_i+2101); 
_magTurret = [];
{
	_magTurret pushBack getArray(configfile >> "CfgVehicles" >> _typeVeh >> "Components" >> "TransportPylonsComponent" >> "Pylons" >> _x >> "turret");
}forEach _allPylonsNames;
_needChange = 0;

_pylonWeaponsBefore =[];
{
	_pylonWeaponsBefore pushBack	getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon");
} forEach _magsCurrent;
//systemChat format ["%1 - Пополнение БК : Завершена", getText (configfile >> "CfgVehicles" >> typeOf _veh >> "displayName")];
while{_i < _counPylons} do
{
	//_avaiableMags = _veh getCompatiblePylonMagazines _i+1;
	  _avaiableMags = ["PylonRack_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonMissile_1Rnd_GAA_missiles","PylonRack_1Rnd_Missile_AGM_02_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonRack_1Rnd_LG_scalpel","PylonMissile_1Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_4Rnd_LG_scalpel","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_12Rnd_PG_missiles","PylonRack_12Rnd_missiles","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Mk82_F","PylonWeapon_300Rnd_20mm_shells","PylonWeapon_2000Rnd_65x39_belt","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_03_F","PylonMissile_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonMissile_1Rnd_Bomb_03_F","PylonMissile_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x2","PylonMissile_Missile_AMRAAM_D_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x2","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x2","PylonMissile_Missile_AGM_02_x1","PylonMissile_Missile_AGM_02_x2","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x2","PylonMissile_Bomb_GBU12_x1","PylonRack_Bomb_GBU12_x2","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Missile_AGM_KH25_INT_x1","PylonMissile_Bomb_KAB250_x1","PylonRack_4Rnd_BombDemine_01_F","PylonRack_4Rnd_BombDemine_01_Dummy_F","PylonMissile_1Rnd_BombCluster_01_F","PylonRack_2Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_02_F","PylonMissile_1Rnd_BombCluster_02_cap_F","PylonMissile_1Rnd_BombCluster_03_F","PylonRack_2Rnd_BombCluster_03_F","Pylon_1Rnd_Leaflets_West_F","Pylon_1Rnd_Leaflets_East_F","Pylon_1Rnd_Leaflets_Guer_F","Pylon_1Rnd_Leaflets_Civ_F","Pylon_1Rnd_Leaflets_Custom_01_F","Pylon_1Rnd_Leaflets_Custom_02_F","Pylon_1Rnd_Leaflets_Custom_03_F","Pylon_1Rnd_Leaflets_Custom_04_F","Pylon_1Rnd_Leaflets_Custom_05_F","Pylon_1Rnd_Leaflets_Custom_06_F","Pylon_1Rnd_Leaflets_Custom_07_F","Pylon_1Rnd_Leaflets_Custom_08_F","Pylon_1Rnd_Leaflets_Custom_09_F","Pylon_1Rnd_Leaflets_Custom_10_F","PylonMissile_Missile_HARM_x1","PylonRack_Missile_HARM_x1","PylonMissile_Missile_HARM_INT_x1","PylonRack_Bomb_SDB_x4","PylonMissile_Missile_KH58_x1","PylonMissile_Missile_KH58_INT_x1"];
	_ctrl = (findDisplay 456963) displayCtrl (_i+2101);
	_indexPylon = lbCurSel _ctrl;
	_c = 0;
	if(_indexPylon != 0)then
	{
//configfile >> "CfgVehicles" >> "rhs_mig29s_base" >> "icon"
//configfile >> "CfgVehicles" >> "rhs_mig29s_base" >> "Attributes" >> "rhs_decalNoseArt" >> "expression"
	    {
	        //configfile >> "CfgVehicles" >> "CUP_O_SU34_RU" >> "Components" >> "TransportPylonsComponent" >> "pylons" >> "pylons1" >> "turret"
    	    if(_indexPylon == _c+1) then
    		{
				if!(getText(configFile >> "CfgMagazines" >> _magsCurrent select _i >> "displayName") isEqualTo (_ctrl lbText _c+1))then
				{
					
					//_veh setPylonLoadOut [_allPylonsNames select _i,_x,false,_magTurret select _i];
					  _veh setPylonLoadOut [_allPylonsNames select _i,_x,true,_magTurret select _i];
					_veh setAmmoOnPylon [_i-1,getNumber (configfile >> "CfgMagazines" >> _x >> "count")];
					_needChange = _needChange + 1;
				};
    		};
    		_c = _c + 1;
    	}forEach _avaiableMags;
	};
	if(_indexPylon == 0)then
	{
	_veh setPylonLoadOut [_allPylonsNames select _i,""];
	
	};
	
	_i = _i + 1;
};
_magsCurrent = getPylonMagazines _veh;
_pylonWeapons =[];
{
	_pylonWeapons pushBack	getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon");
} forEach _magsCurrent;
{
	if((_pylonWeapons find _x) isEqualTo -1)then
	{
		_veh removeWeaponGlobal _x;
	};
}forEach _pylonWeaponsBefore;
/*
if({_x ==  _pylonWeapons select _i} count _pylonWeapons < 1)then
		{
					systemChat format ["del 1%1",_pylonWeapons select _i];
			_veh removeWeaponGlobal (getText (configFile >> "CfgMagazines" >> _pylonWeapons select _i >> "pylonWeapon"));
					systemChat format ["delted 1%1",_pylonWeapons select _i];
		};


_pylonWeapons = _magsCurrent apply {getText ((configfile >> "CfgMagazines" >> _x >> "pylonWeapon"))};

{
	_veh removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon");
} forEach _magsCurrent;
systemChat format ["weapons : %1",_pylonWeapons];
*/
//#############
//skin
//#############
//<img image='%1' />      getText (configfile >> "CfgVehicles" >> typeOf _veh >> "icon")
//#########
//#Refuel/Repair/ammo
//#########
/*
(findDisplay 456963) displayCtrl(2800) - fuel 30
(findDisplay 456963) displayCtrl(2801) - repair 60
(findDisplay 456963) displayCtrl(2802) - ammo 30
                                             60
*/
//30-3
_timeFuel = 2;//30
_timeRepair = 2;//60
_timeAmmo = 2;//30
_timePylons = 3;//30
_timeSkin = 2;
_tTime = 0;
zlo_VehicleInAsisstance = false;
_refuel = cbChecked ((findDisplay 456963) displayCtrl(2800));
_repair =cbChecked ((findDisplay 456963) displayCtrl(2801));
_ammo =cbChecked ((findDisplay 456963) displayCtrl(2802));
_ctrl = (findDisplay 456963) displayCtrl 2100;
_selCamo = lbCurSel _ctrl;

closeDialog 0;
if((alive _veh) isEqualTo true)then
{		
	if((_refuel)isequalto true)then
	{
		_tTime = _tTime + _timeFuel;
		zlo_VehicleInAsisstance = true;
	};
	if((_repair)isequalto true)then
	{
		_tTime = _tTime + _timeRepair;
		zlo_VehicleInAsisstance = true;
	};
	if((_ammo)isequalto true)then
	{
		_veh setVehicleAmmo 0;
		_tTime = _tTime + _timeAmmo;
		zlo_VehicleInAsisstance = true;
	};
	if(_needChange > 0)then
	{
		_tTime = _tTime + _timePylons;
		zlo_VehicleInAsisstance = true;
	};
	if(_needChange > 1)then
	{
		_tTime = _tTime + _timePylons;
		zlo_VehicleInAsisstance = true;
	};
	if(_needChange > 2)then
	{
		_tTime = _tTime + _timePylons;
		zlo_VehicleInAsisstance = true;
	};
	if(_needChange > 3)then
	{
		_tTime = _tTime + _timePylons;
		zlo_VehicleInAsisstance = true;
	};
	if(_needChange > 4)then
	{
		_tTime = _tTime + _timePylons;
		zlo_VehicleInAsisstance = true;
	};
	if(_needChange > 5)then
	{
		_tTime = _tTime + _timePylons;
		zlo_VehicleInAsisstance = true;
	};
	if(_selCamo > 0)then
	{
		_tTime = _tTime + _timeSkin;
		zlo_VehicleInAsisstance = true;
	};
	//maitenance on start
	//hint parseText format["<br /><img image='code\scripts\ZLoad\img\wr.jpg' /><br />%1 :<t color='#FF0000'>%2</t> %3<br /> <br /> ",localize "zlo_wait_text",_tTime,localize"zlo_sec_text"];	
	_wait = time + _tTime;
	_round = 0;
	while { time <= _wait } do
	{
		if (_wait - time <= 10) then
		{
			_round = 1;
		};
		hint parseText format["<br /><img image='code\scripts\ZLoad\img\wr.jpg' /><br />%1 :<t color='#FF0000'>%2</t> %3<br /> <br /> ",localize "zlo_wait_text",parseNumber((_wait - time) toFixed _round),localize"zlo_sec_text"];
		uiSleep 0.1;
	};
	//uiSleep _tTime;
	hint parseText format["<br /><img image='code\scripts\ZLoad\img\wr.jpg' /><br /><t color='#1f8636'>%1</t><br /> <br /> ",localize "zlo_serviceeeady_text"];
	if((alive _veh) isEqualTo true)then
	{
		if((_refuel)isequalto true)then
		{
			_veh setFuel 1;;
		}else
		{
			_veh setFuel zlo_VehicleFuel;
		};
		if((_repair)isequalto true)then
		{
			_veh setDamage 0;
		};
		if((_ammo)isequalto true)then
		{
			_veh setVehicleAmmo 1;
		};
		if(_needChange > 6)then
		{
			_veh setVehicleAmmo 1;
		};
		zlo_VehicleInAsisstance = false;
	};
};

_camoCountSources = "true" configClasses (configfile >> "CfgVehicles" >> _typeVeh >> "textureSources");
_camoTextures = [""];
_camoNames = [""];
_i = 0;
if (_selCamo > -1) then
{
	if(count _camoCountSources > 0) then
	{
		{
			_camoTextures pushback (getArray (configfile >> "CfgVehicles" >> _typeVeh >> "textureSources" >> configName _x >> "textures"))
		}forEach _camoCountSources;

		{
			_index = (_camoTextures select _selCamo+1) find _x;
			_veh setObjectTextureGlobal [_index, (_camoTextures select _selCamo+1) select _index];
			_parents = [];
			_inherit = (configfile >> "CfgVehicles" >> _typeVeh);
			while{!isNull _inherit}do
			{
			    _parents pushBack configName _inherit;
			    _inherit = inheritsFrom _inherit;
			};
			{
			    if("CUP_AV8B_Base" isEqualTo _x)then
			    {
			        _veh setObjectTextureGlobal [_index+1, (_camoTextures select _selCamo+1) select _index];
			    };
			}forEach _parents;
			//textures[] = {"cup\airvehicles\cup_airvehicles_av8b\data\texture\CUP_av8b_aaf_1_co.paa","cup\airvehicles\cup_airvehicles_av8b\data\texture\CUP_av8b_aaf_1_co.paa","#(argb,512,512,1)r2t(rendertarget0,1.0)"};
		} foreach (_camoTextures select _selCamo+1);
	};
};
			