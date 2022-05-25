_queue = missionNamespace getVariable ['NOTIF_QUEUE',[]];
for [{_i = (count _queue) - 1},{_i >= 0 },{_i = _i - 1}] do
{
	if (!(isNil {_queue select _i}) && { (count (_queue select _i) > 0) }) then
	{
		_queuePriority = (_queue select _i);
		_x = _queuePriority select 0;
		if !(isNil "_x") then
		{
			_x params [
				'_title',
				'_iconPicture',
				'_iconText',
				'_description',
				'_color',
				'_colorIconPicture',
				'_colorIconText',
				'_duration',
				'_priority',
				'_args',
				'_sound',
				'_soundClose',
				'_soundRadio',
				'_iconSize'
			];

			_queuePriority deleteAt 0;
			if (_queuePriority isEqualTo []) then
			{
				_queuePriority = nil;
			};

			_x call NOTIF_fnc_create;
		};
	}
	else
	{
		if (count _queue - 1 isEqualTo _i) then
		{
			_queue resize (count _queue - 1);
		};
	};
};