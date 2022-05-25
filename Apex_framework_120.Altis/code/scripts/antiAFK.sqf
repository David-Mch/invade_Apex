////////// Auto AFK by Alez         ///////////
////////// Invade And Annex Edition ///////////
 
 
AAFK_MaxAFKSecs = 10 * 60;; /// 5 mins
AAFK_Distance = 70; /// meters
AAFK_DismountAFK = true; /// Dismount vehicle if AFK
AAFL_ChangeRoleAFK = (missionNamespace getVariable ['QS_roles_defaultRole','rifleman']); /// Change role if AFK to selected, "" for no change or other missions types
 
 
/////////////////// DO NOT EDIT BELOW ///////////////////////////
 
if (hasInterface) then
{
    MISSION_ROOT = call {
        private "_arr";
        _arr = toArray str missionConfigFile;
        _arr resize (count _arr - 15);
        toString _arr
    };
 
    waituntil { !isnull (finddisplay 46) };
    AAFK_ehKeyUp = (findDisplay 46) displayAddEventHandler ["KeyUp", { _this call AAFK_player_not_afk; }];
    AAFK_ehMouseUp = (findDisplay 46) displayAddEventHandler ["MouseButtonUp", { _this call AAFK_player_not_afk; }];
    AAFK_ehMouseWheel = (findDisplay 46) displayAddEventHandler ["MouseZChanged", { _this call AAFK_player_not_afk; }];
    AAFK_ehMouseMove = (findDisplay 46) displayAddEventHandler ["MouseMoving", { _this call AAFK_player_not_afk; }];
 
    missionNamespace setVariable ["AAFK_Timer",nil];
    missionNamespace setVariable ["AAFK_AFK_List",[]];
 
    AAFK_player_is_AFK = {
        params['_player'];
 
        if ((getPlayerUID _player) in AAFK_AFK_List) exitWith { true };
 
        false
    };
 
    AAFK_broadcast = {
        params["_afk"];
 
        if !(_afk isEqualTo ([player] call AAFK_player_is_AFK)) then
        {
            _uid = getPlayerUID player;
 
            missionNamespace setVariable ["AAFK_public_AFK",[_afk,_uid]];
            publicVariableServer "AAFK_public_AFK";
 
            if (_afk) then
            {
                titleText ["<t color='#ff0000' size='5'>Usted se encuentra AFK</t>", "PLAIN", 2, true, true];
                AAFK_AFK_List = AAFK_AFK_List + [_uid];
            }
            else
            {
                titleText ["", "PLAIN", 2, true, true];
                AAFK_AFK_List = AAFK_AFK_List - [_uid];
            };
        };
    };
 
    AAFK_player_not_afk = {
        missionNamespace setVariable ["AAFK_Timer",time];
 
        [false] call AAFK_broadcast;
    };
 
    0 = [] spawn
    {
        while { true } do
        {
            waituntil { sleep 1; (!(isNil { missionNamespace getVariable ["AAFK_Timer",nil] }) && { ((missionNamespace getVariable ["AAFK_Timer",time]) + AAFK_MaxAFKSecs <= time) }) };
 
            [true] call AAFK_broadcast;
 
            if (AAFK_DismountAFK && { !((vehicle player) isEqualTo player) } ) then
            {
                player action ["GetOut",vehicle player];
                player action ["Eject",vehicle player];
            };
 
            if !(AAFL_ChangeRoleAFK isEqualTo "") then
            {
                _rolemenu = uiNamespace getVariable ['QS_client_roles_menu_canSelectRole',false];
                uiNamespace setVariable ['QS_client_roles_menu_canSelectRole',true];
                ['REQUEST_ROLE',(getPlayerUID player),(player getVariable ['QS_unit_side',WEST]),AAFL_ChangeRoleAFK,player,clientOwner] call (missionNamespace getVariable 'QS_fnc_roles');
                uiNamespace setVariable ['QS_client_roles_menu_canSelectRole',_rolemenu];
            };
 
            missionNamespace setVariable ["AAFK_Timer",nil];
 
            sleep 1;
        };
    };
 
    missionNamespace setVariable ["QS_fnc_roles",{ systemChat format["CAMBIAR ROLES: %1",_this]; }];
 
    "AAFK_AFK_List" addPublicVariableEventHandler {
        missionNamespace setVariable["AAFK_AFK_List",_this select 1];
    };
 
    ["AAFK_ehOnEachFrame","onEachFrame",
    {
        [] call fn_drawAFK;
    }] call BIS_fnc_addStackedEventHandler;
 
    fn_drawAFK = 
    { 
        {
            _unit = _x call BIS_fnc_getUnitByUid; 
            _dist = _unit distance player;
            
            if (_dist <= AAFK_Distance) then 
            {
                if ((_unit isEqualTo (vehicle _unit)) || { (count (crew (vehicle _unit)) isEqualTo 1) || { (driver (vehicle _unit) isEqualTo _unit) } }) then 
                { 
                    _vis = ([_unit, "VIEW", player] checkVisibility [eyePos _unit, eyePos player]);
                    if (_vis > 0) then
                    {
                        _pos = _unit selectionPosition ["pelvis","MEMORY"]; 
                        _offset = [0,0,linearConversion[AAFK_Distance / 2,0,_dist,1.5,0.95,true]];
                        _worldPos = _unit modelToWorld (_pos vectorAdd _offset); worldpos = _worldPos;
                        _img = MISSION_ROOT + "media\images\general\zZz.paa"; 
                        _text = ""; 
                        _color = [1,1,1,linearConversion[AAFK_Distance,AAFK_Distance - 10,_dist,0,0.85,true] * _vis];
                        _textSz = 0.3;
                        _iconSz = linearConversion[AAFK_Distance,0,_dist,0.3,3,true];
 
                        drawIcon3D [_img, _color, _worldPos, _iconSz, _iconSz, 0, _text, 1, _textSz, "RobotoCondensedBold", "CENTER", false];
                    };
                };
            }; 
        } forEach AAFK_AFK_List; 
    };
};
 
if (isServer) then
{
    missionNamespace setVariable ["AAFK_AFK_List",[]];
 
    ["AAFK_ehOnConnect","onPlayerConnected",
        {
            params ["_id", "_uid", "_name", "_jip", "_owner"];
 
            _owner publicVariableClient "AAFK_AFK_List";
        }
    ] call BIS_fnc_addStackedEventHandler;
    
    ["AAFK_ehOnDisconnect","onPlayerDisconnected",
        {
            params ["_id", "_uid", "_name", "_jip", "_owner"];
 
            if (_uid in AAFK_AFK_List) then
            {
                AAFK_AFK_List = AAFK_AFK_List - [_uid];
                publicVariable "AAFK_AFK_List";
            };
        }
    ] call BIS_fnc_addStackedEventHandler;
 
    "AAFK_public_AFK" addPublicVariableEventHandler
    {
        (_this select 1) params["_afk","_uid"];
        
        if ((_afk) && !(_uid in AAFK_AFK_List)) then
        {
            AAFK_AFK_List = AAFK_AFK_List + [_uid];
            publicVariable "AAFK_AFK_List";
        }
        else
        {
            if (!(_afk) && (_uid in AAFK_AFK_List)) then
            {
                AAFK_AFK_List = AAFK_AFK_List - [_uid];
                publicVariable "AAFK_AFK_List";
            };
        };
    };
};