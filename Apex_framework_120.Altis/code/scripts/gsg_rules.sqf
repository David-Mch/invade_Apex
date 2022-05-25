// by Figuri001
// null = [this] execVM "GSG\gsg_rules.sqf";

_board = _this select 0;
_board addaction ["<t size='1.5' shadow='2' color='#ead405'>|===SOCIAL NETWORKS==|</t>",{


_player = _this select 1;
sleep 0.5;
_txt = composeText [
"==============================================",
lineBreak,
lineBreak,
lineBreak,
parseText Format["<t size='1.7'>HELLO %1!</t>",name _player],
lineBreak,
lineBreak,
lineBreak,
parseText"<t size='1'><a color='#FFFFFF'> ------------ Links de Acceso------------ </a></t>",
lineBreak,
lineBreak,
parseText"<t size='1.5'><img image='' /><a color='#ffbf00' href='https://steamcommunity.com/sharedfiles/filedetails/?id=2091470627'>|=========SERVER MOD=========|</a></t>",
lineBreak,
lineBreak,
//parseText"<t size='1.5'><img image='' /><a color='#FFFFFF' href='https://www.facebook.com/groups/1814088122182510/'>|==Facebook==|</a></t>",
//lineBreak,
//lineBreak,
parseText"<t size='1.5'><img image='' /><a color='#009900' href='https://chat.whatsapp.com/57DMU9Ghz5L1yOgEe3kD0W'>|=======Grupo WhatsApp=======|</a></t>",
lineBreak,
lineBreak,
parseText"<t size='1.5'><img image='' /><a color='#0080ff' href='https://units.arma3.com/unit/chl'>|=========UNIT ARMA3=========|</a></t>",
lineBreak,
lineBreak,
parseText"<t size='1.5'><img image='' /><a color='#cc0000' href='https://www.paypal.me/SERVERHISPANO'>|=========Donaciones=========|</a></t>",
lineBreak,
lineBreak,
//parseText"<t size='1.5'><img image='' /><a color='#FFFFFF' href='ts3server://8.26.94.64?port=10002'>|==ts3==|</a></t>",
lineBreak,
lineBreak
];
"|===SOCIAL NETWORKS==|" hintC _txt;
hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", { 0 = _this spawn { _this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH]; hintSilent ""; }; }];
diag_log composeText ["Nutzung Regeln von ",name _player];
}];

     
        