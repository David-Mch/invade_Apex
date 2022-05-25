_vip_only = [
	"B_Plane_CAS_01_dynamicLoadout_F", // Buzzard
	"B_Heli_Attack_01_dynamicLoadout_F", // Buzzard
	"O_Heli_Attack_02_black_F", // Blackfoot
	"O_T_VTOL_02_infantry_dynamicLoadout_F", // Blackfish armedç
	"O_T_VTOL_02_infantry_grey_F",
	"B_T_VTOL_01_armed_blue_F"
	
];

// Remove comments and insert UIDs into the whitelist to exempt individuals from this script
//LINHAS DE CODIGO PARA LIBERAR ACESSO AO HELICOPTERO PELO ID DO JOGADOR - DAQUI

_uid = getPlayerUID player;
_whitelist = [
		'76561198098834526', //Linux
		'76561198438259697', //patzxd
		'76561198198639473', //claauxc
		'76561198081591872', //Alex
		'76561198279264663', //clepsidra22
		'76561198834608686', //darkman1494
		'76561198001964672', //Alez
		'76561198097681612', //Spears R
		'76561198097736768', //Ariel
		'76561198021993616', //luciux
		'76561198134265854', //Maja Fe
		'76561198252364116', //Microxbee
		'76561198327807920', //Gabojaja
		'76561198427057468', //PesadillaAssassin
		'76561198833372712', //Fire33CH
		'76561197989203585', //RDLG21
		'76561198843901359', //elpoty
		'76561198121036732', //ImTager
		'76561198177970325', //marianobach2014
		'76561198173587970', //Luchooahr
		'76561198010774732', //[RESTAURAR] BOYKA
		'76561198059273449', //EL OTRO OTRO FAN DE MAPLE (Snooze)
		'76561198127107120',  //brayanfuen
		"76561198059509494", //Combinao
		"76561198818755787", //watayn
		//"76561198301820197", //Elias_Panama
		"76561198003562671", //Dan_fenix
		"76561198848824346", //Manu3lithoo
		"76561198797857182", //Cr4Zy
		"76561198340158460", //Ender034
		"76561198011728776", //saulsox
		"76561198153209731", //RumoR
		"76561198371226960", //Karma
		"76561198880651343", //MR_POTATO207
		"76561198284339186", //Capitan America
		"76561198155468349", //Golden32
		"76561198357925087", //octaviofuenzalida9
		"76561198306066151", //Chino uy03
		"76561198402206562", //LOCO2.0
		"76561198377910986"   //Frost
];

if (_uid in _whitelist) exitWith {};


//Daqui em diante: código para quem nao é VIP
while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only
		
		if((_veh isKindOf "Helicopter" || _veh isKindOf "Plane") && !(_veh isKindOf "vehicle")) then {
			
			if(({typeOf _veh == _x} count _vip_only) > 0) then {
				systemChat "Solite su Permiso con el Admin";
				player action ["getOut", _veh];
			}
			
			};
		};
	};


