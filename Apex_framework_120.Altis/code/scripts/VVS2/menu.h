#include "resource.h"

class VVS2_Menu
{
	idd = VVS2_Menu_IDD;
	name = "VVS2_Menu";
	movingEnabled = false;
	enableSimulation = true;
	onLoad = "[] spawn VVS2_fnc_mainDisplay;";
	
	class controlsBackground
	{
		class titleBackground : VVS2_RscText
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class MainBackground : VVS2_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.76};
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.6 - (22 / 250);
		};
		
		class Footer : VVS2_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.8};
			x = 0.1;
			y = 0.805;
			w = 0.8;
			h = (1 / 25);
		};
		
		class ClearCargoText : VVS2_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0};
			text = "Clear Vehicle Cargo:";
			sizeEx = 0.04;
			x = 0.105;
			y = 0.805;
			w = 0.8;
			h = (1 / 25);
		};
		
		class CargoCheck : VVS2_RscActiveText 
		{
			idc = VVS2_CargoCheck;
			text = "No";
			action = "[] call VVS2_fnc_checkBox";
			sizeEx = 0.04;
// def 2015 09 19>
			colorDisabled[] = {1, 1, 1, 0.3};
// <def 2015 09 19
			x = 0.32; y = 0.805;
			w = 0.275; h = 0.04;
		};
		
		class Title : VVS2_RscTitle
		{
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Virtual Vehicle Spawner";
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
	};
	
	class controls
	{
		class vehicleListNew : VVS2_RscListNBox
		{
			idc = VVS2_VehicleList;
			text = "";
			sizeEx = 0.04;
			columns[] = {0,0.105,0.5,0.8};
			drawSideArrows = false;
			idcLeft = -1;
			idcRight = -1;
			rowHeight = 0.050;
			x = 0.1; y = 0.26;
			w = 0.8; h = 0.49 (22 / 250);
		};
		
		class FilterList : VVS2_RscCombo
		{
			idc = VVS2_FilterList;
			colorBackground[] = {0,0,0,0.7};
			onLBSelChanged  = "_this call VVS2_fnc_filterList";
			x = 0.244 + (6.25 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = 0.34; h = (1 / 25);
		};
		
		class ButtonClose : VVS2_RscButtonMenu 
		{
			idc = -1;
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = 0.1;
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonSettings : VVS2_RscButtonMenu 
		{
			idc = -1;
			text = "Spawn";
			onButtonClick = "[] spawn VVS2_fnc_spawnVehicle";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
	};
};