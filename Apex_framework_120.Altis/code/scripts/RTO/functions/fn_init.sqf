if (!isServer) exitWith { false };

if (isNil "RTO_Loaded") then
{
	RTO_ObjList = [];
	RTO_Handle = nil;
	RTO_Resolution = 1;

	if (isNil "RTO_Handle") then
	{
		RTO_Handle = [] spawn {
			while { true } do
			{
				[] call RTO_fnc_check;

				sleep RTO_Resolution;
			};
		};
	};
	
	RTO_Loaded = true;
};