class QS_RD_dialog_RscButtonMenu: QS_RD_dialog_RscShortcutButton
{
	idc=-1;
	type=16;
	style="0x02 + 0xC0";
	default=0;
	shadow=0;
	x=0;
	y=0;
	w=0.095588997;
	h=0.039216001;
	textureNoShortcut = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureNormal="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled="#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver="#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused="#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault="#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[]={0,0,0,0.80000001};
	colorBackgroundFocused[]={1,1,1,1};
	colorBackground2[]={0.75,0.75,0.75,1};
	color[]={1,1,1,1};
	colorFocused[]={0,0,0,1};
	color2[]={0,0,0,1};
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.25};
	textSecondary="";
	colorSecondary[]={1,1,1,1};
	colorFocusedSecondary[]={0,0,0,1};
	color2Secondary[]={0,0,0,1};
	colorDisabledSecondary[]={1,1,1,0.25};
	sizeExSecondary="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary="PuristaLight";
	period=1.2;
	periodFocus=1.2;
	periodOver=1.2;
	size="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.64999998};
	class TextPos
	{
		left="0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.0049999999;
		bottom=0;
	};
	class Attributes
	{
		font="PuristaLight";
		color="#E5E5E5";
		align="left";
		shadow="false";
	};
	class ShortcutPos
	{
		left="5.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top=0;
		w="1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.090000004,
		1
	};
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.090000004,
		1
	};
	soundClick[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.090000004,
		1
	};
	soundEscape[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.090000004,
		1
	};
};

class QS_RD_dialog_RscTitle: QS_RD_dialog_RscText
{
	style=0;
	sizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[]={0.94999999,0.94999999,0.94999999,1};
	font="PuristaMedium";
};

class QS_RD_dialog_RscActiveText
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = CT_ACTIVETEXT;
    style = ST_CENTER;
    color[] = {0,0,0,1};
    colorActive[] = {0.3,0.4,0,1};
    colorDisabled[] = {1,1,1,0.25};
    soundEnter[] =
    {
        "",
        0.1,
        1
    };
    soundPush[] =
    {
        "",
        0.1,
        1
    };
    soundClick[] =
    {
        "",
        0.1,
        1
    };
    soundEscape[] =
    {
        "",
        0.1,
        1
    };
    text = "";
    default = 0;
    idc = -1;
    x = 0;
    y = 0;
    h = 0.035;
    w = 0.035;
    font = "RobotoCondensed";
    shadow = 2;
    sizeEx = GUI_TEXT_SIZE_MEDIUM;
    url = "";
    tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
};

class QS_RD_dialog_RscActivePicture: QS_RD_dialog_RscActiveText
{
    style = ST_MULTI + ST_TITLE_BAR;
    color[] = {1,1,1,0.5};
    colorActive[] = {1,1,1,1};
};

class QS_RD_dialog_RscPictureButton: QS_RD_dialog_RscActivePicture
{
	idc = 10;
	text = "dsr_ui\Assets\indexbtn.paa";
	action = "systemchat 'INDEX CLICKED'";
	style = 2096;
	y = "safeZoneY + (safeZoneH/2) - (pixelH*400) + (pixelH*80)";
	x = "safeZoneX + (safeZoneW/2) - (pixelW*400) - (pixelW*120)";
	w = "100*pixelW";
	h = "100*pixelH";
};

class QS_RD_dialog_RscControlsGroupNoHScrollbars: QS_RD_dialog_RscControlsGroup
{
	class HScrollbar: HScrollbar
	{
		height=0;
	};
};

class QS_RD_dialog_RscControlsGroupNoScrollbars: QS_RD_dialog_RscControlsGroup
{
	class VScrollbar: VScrollbar
	{
		width=0;
	};
	class HScrollbar: HScrollbar
	{
		height=0;
	};
};

class QS_RD_dialog_RscBackgroundGUI: QS_RD_dialog_RscText
{
	colorBackground[]={0,0,0,0.5};
	colorText[]={1,1,1,1};
	background=1;
};

class QS_RD_dialog_RscBackgroundGUITop: QS_RD_dialog_RscText
{
	colorBackground[]={0,0,0,1};
	align="top";
	moving=1;
	background=1;
};

class QS_RD_dialog_RscStructuredText
{
	x=0;
	y=0;
	h=0.035;
	w=0.1;
	text="";
	size="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	type = CT_STRUCTURED_TEXT;  // defined constant
	style = ST_LEFT;            // defined constant
	colorText[]={1,1,1,1};
	shadow=1;
	class Attributes
	{
		font="RobotoCondensed";
		color="#ffffff";
		colorLink="#D09B43";
		align="left";
		shadow=1;
	};
};

class QS_RD_dialog_RscButtonMenuOK: QS_RD_dialog_RscButtonMenu
{
	idc=1;
	shortcuts[]=
	{
		"0x00050000 + 0",
		28,
		57,
		156
	};
	default=1;
	text="$STR_DISP_OK";
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",
		0.090000004,
		1
	};
};

class QS_RD_dialog_RscButtonMenuCancel: QS_RD_dialog_RscButtonMenu
{
	idc=2;
	shortcuts[]=
	{
		"0x00050000 + 1"
	};
	text="$STR_DISP_CANCEL";
};

class QS_RD_dialog_RscMessageBox: QS_RD_dialog_RscControlsGroupNoScrollbars
{
	idc=2351;
	x=-1;
	y=-1;
	w=0;
	h=0;
	class Controls
	{
		class BcgCommonTop: QS_RD_dialog_RscBackgroundGUITop
		{
			idc=235100;
			x=0;
			y=0;
			w="18.8 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]=
			{
				"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
				1
			};
		};
		class BcgCommon: QS_RD_dialog_RscBackgroundGUI
		{
			idc=235101;
			x=0;
			y="1.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="18.8 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.7 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,1};
		};
		class Text: QS_RD_dialog_RscStructuredText
		{
			idc=235102;
			x="0.7 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="1.8 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="17 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
		};
		class BackgroundButtonOK: QS_RD_dialog_RscBackgroundGUI
		{
			idc=235103;
			x=0;
			y="2.9 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="6.2 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,1};
		};
		class BackgroundButtonMiddle: BackgroundButtonOK
		{
			idc=235104;
			x="6.3 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		};
		class BackgroundButtonCancel: BackgroundButtonOK
		{
			idc=235105;
			x="12.6 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		};
		class ButtonOK: QS_RD_dialog_RscButtonMenuOK
		{
			default=1;
			idc=235106;
			colorBackground[]={0,0,0,1};
			x=0;
			y="2.9 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="6.2 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class ButtonCancel: QS_RD_dialog_RscButtonMenuCancel
		{
			idc=235107;
			colorBackground[]={0,0,0,1};
			x="12.6 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="2.9 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="6.2 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
	};
};

class QS_RD_dialog_RscButtonArsenal: QS_RD_dialog_RscButton
{
	style="0x30 + 0x800";
	colorBackground[]={0,0,0,0.80000001};
	colorDisabled[]={1,1,1,1};
};

class RscDisplayGarage2
{
	idd=-1;
	enableSimulation=1;
	scriptName="RscDisplayGarage2";
	scriptPath="GUI";
	onLoad="";
	onUnload="";
	icon="\A3\Ui_f\data\Logos\a_64_ca.paa";
	logo="\A3\Ui_f\data\Logos\arsenal_1024_ca.paa";
	class ControlsBackground
	{
		/*class BlackLeft: QS_RD_dialog_RscText
		{
			colorBackground[]={0,0,0,1};
			x="safezoneXAbs";
			y="safezoneY";
			w="safezoneXAbs - safezoneX";
			h="safezoneH";
		};*/
		/*class BlackRight: BlackLeft
		{
			x="safezoneX + safezoneW";
		};*/
		class MouseArea: QS_RD_dialog_RscText
		{
			idc=899;
			style=16;
			colorBackground[]={0,0,0,0};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
	class Controls
	{
		class ArrowLeft: QS_RD_dialog_RscButton
		{
			idc=992;
			text="-";
			x=-1;
			y=-1;
			w="1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class ArrowRight: ArrowLeft
		{
			idc=993;
			text="+";
			x=-1;
			y=-1;
			w="1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class BackgroundLeft: QS_RD_dialog_RscText
		{
			fade=1;
			idc=994;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0.5};
		};
		class BackgroundRight: BackgroundLeft
		{
			idc=995;
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		};
		class LineIcon: QS_RD_dialog_RscFrame
		{
			fade=1;
			idc=1803;
			x=-1;
			y=-1;
			w=0;
			h=0;
			colorText[]={0,0,0,1};
		};
		class LineTabLeft: QS_RD_dialog_RscText
		{
			fade=1;
			idc=1804;
			x=-1;
			y=-1;
			w="0.6 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,1};
		};
		class LineTabLeftSelected: QS_RD_dialog_RscText
		{
			idc=1805;
			x="safezoneX";
			y=-1;
			w="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0.80000001};
		};
		class LineTabRight: LineTabLeft
		{
			idc=1806;
		};
		class Tabs: QS_RD_dialog_RscFrame
		{
			fade=1;
			idc=1800;
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="1.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="40 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorText[]={0,0,0,0};
		};
		class FrameLeft: QS_RD_dialog_RscFrame
		{
			fade=1;
			idc=1801;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorText[]={0,0,0,1};
		};
		class FrameRight: FrameLeft
		{
			fade=1;
			idc=1802;
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		};
		class Load: RscProgress
		{
			fade=1;
			idc=990;
			style=0;
			texture="#(argb,8,8,3)color(1,1,1,1)";
			colorBar[]={1,1,1,1};
			colorFrame[]={0,0,0,1};
			x="safezoneX";
			y="safezoneY + safezoneH - 0.0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="safezoneW";
			h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class LoadCargo: Load
		{
			fade=1;
			idc=991;
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + safezoneH - 11.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class Message: QS_RD_dialog_RscText
		{
			fade=1;
			idc=996;
			x="safezoneX + (0.5 * safezoneW) - (0.5 * ((safezoneW - 36 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) max 0.4))";
			y="21.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 			(safezoneY + safezoneH - 			(			((safezoneW / safezoneH) min 1.2) / 1.2))";
			w="((safezoneW - 36 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) max 0.4)";
			h="1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0.69999999};
			style=2;
			shadow=0;
			text="";
			sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class Space: QS_RD_dialog_RscControlsGroup
		{
			x="safezoneX + safezoneW * 0.5 - 4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY";
			show=0;
			idc=27903;
			w="8.1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls
			{
				class SpaceArsenalBackground: QS_RD_dialog_RscText
				{
					idc=26603;
					x="0 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,0.69999999};
				};
				class SpaceArsenal: QS_RD_dialog_RscActivePicture
				{
					idc=26803;
					text="\a3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\spaceArsenal_ca.paa";
					x="1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="2 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					tooltip="$STR_A3_Arsenal";
				};
				class SpaceGarageBackground: SpaceArsenalBackground
				{
					idc=26604;
					x="4.1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="4 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,0.69999999};
				};
				class SpaceGarage: SpaceArsenal
				{
					idc=26804;
					text="\a3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\spaceGarage_ca.paa";
					x="5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="1.99996 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					tooltip="$STR_A3_Garage";
				};
			};
		};
		class ControlBar: QS_RD_dialog_RscControlsGroupNoScrollbars
		{
			w="safezoneW";
			idc=44046;
			x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40) + 			(safezoneX)";
			y="23.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 			(safezoneY + safezoneH - 			(			((safezoneW / safezoneH) min 1.2) / 1.2))";
			h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls
			{
				class ButtonClose: QS_RD_dialog_RscButtonMenu
				{
					idc=44448;
					text="$STR_DISP_CLOSE";
					x="0 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.2) - 0.1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					shortcuts[]=
					{
						"0x00050000 + 1"
					};
					tooltip="$STR_A3_RscDisplayGarage_ButtonClose_tooltip";
				};
				class ButtonInterface: ButtonClose
				{
					idc=44151;
					text="$STR_CA_HIDE";
					x="2 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					w="((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1) - 0.1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					tooltip="$STR_A3_RscDisplayArsenal_ButtonInterface_tooltip";
				};
				class ButtonRandom: ButtonInterface
				{
					idc=44150;
					text="$STR_A3_RscDisplayArsenal_ButtonRandom";
					x="3 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonRandom_tooltip";
				};
				class ButtonSave: ButtonInterface
				{
					idc=44146;
					text="$STR_DISP_INT_SAVE";
					x="4 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonSave_tooltip";
				};
				class ButtonLoad: ButtonInterface
				{
					idc=44147;
					text="$STR_DISP_INT_LOAD";
					x="5 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonLoad_tooltip";
				};
				class ButtonExport: ButtonInterface
				{
					idc=44148;
					text="$STR_A3_RscDisplayArsenal_ButtonExport";
					x="6 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonExport_tooltip";
				};
				class ButtonImport: ButtonInterface
				{
					idc=44149;
					text="$STR_A3_RscDisplayArsenal_ButtonImport";
					x="7 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonImport_tooltip";
				};
				class ButtonTry: ButtonInterface
				{
					idc=44347;
					text="$STR_A3_RscDisplayArsenal_ButtonOK";
					x="8 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonTry_tooltip";
					shortcuts[]=
					{
						"0x00050000 + 0",
						28,
						57,
						156
					};
				};
				class ButtonOK: ButtonInterface
				{
					idc=44346;
					text="$STR_DISP_CLOSE";
					x="9 * 	((safezoneW - 1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) * 0.1)";
					tooltip="$STR_A3_RscDisplayGarage_ButtonOK_tooltip";
				};
			};
		};
		class Info: QS_RD_dialog_RscControlsGroup
		{
			x="safezoneX + safezoneW - 20.1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + safezoneH - 4.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			fade=1;
			idc=25815;
			w="17.6 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="3 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls
			{
				class InfoBackground: QS_RD_dialog_RscText
				{
					idc=24515;
					x="2.6 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,1};
				};
				class InfoName: QS_RD_dialog_RscText
				{
					idc=24516;
					x="2.6 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					sizeEx="1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class InfoAuthor: QS_RD_dialog_RscText
				{
					idc=24517;
					x="2.6 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorText[]={1,1,1,0.5};
					sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class DLCBackground: QS_RD_dialog_RscText
				{
					fade=1;
					idc=24518;
					x="0 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="2.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,0.5};
				};
				class DLCIcon: QS_RD_dialog_RscActivePicture
				{
					enabled=0;
					fade=1;
					color[]={1,1,1,1};
					colorActive[]={1,1,1,1};
					idc=24715;
					text="#(argb,8,8,3)color(1,1,1,1)";
					x="0 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="2.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
			};
		};
		class Stats: QS_RD_dialog_RscControlsGroupNoScrollbars
		{
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + safezoneH - 10.6 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			fade=1;
			enable=0;
			idc=28644;
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="6 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls
			{
				class StatsBackground: QS_RD_dialog_RscText
				{
					idc=27347;
					x="0 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="6 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,0.5};
				};
				class Stat1: RscProgress
				{
					colorBar[]={1,1,1,1};
					colorFrame[]={0,0,0,0};
					idc=27348;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class Stat2: Stat1
				{
					idc=27349;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class Stat3: Stat1
				{
					idc=27350;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class Stat4: Stat1
				{
					idc=27351;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="3.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class Stat5: Stat1
				{
					idc=27352;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="4.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class StatText1: QS_RD_dialog_RscText
				{
					shadow=0;
					colorShadow[]={1,1,1,1};
					idc=27353;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorText[]={0,0,0,1};
					colorBackground[]={1,1,1,0.1};
					sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class StatText2: StatText1
				{
					idc=27354;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorText[]={0,0,0,1};
					colorBackground[]={1,1,1,0.1};
					sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class StatText3: StatText1
				{
					idc=27355;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorText[]={0,0,0,1};
					colorBackground[]={1,1,1,0.1};
					sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class StatText4: StatText1
				{
					idc=27356;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="3.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorText[]={0,0,0,1};
					colorBackground[]={1,1,1,0.1};
					sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class StatText5: StatText1
				{
					idc=27357;
					x="0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="4.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="14 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="0.9 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorText[]={0,0,0,1};
					colorBackground[]={1,1,1,0.1};
					sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
			};
		};
		class MouseBlock: QS_RD_dialog_RscText
		{
			idc=898;
			style=16;
			colorBackground[]={0,0,0,0};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
		class Template: QS_RD_dialog_RscControlsGroup
		{
			fade=1;
			idc=35919;
			x="10 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y="0.9 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w="20 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="22.2 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls
			{
				class Title: QS_RD_dialog_RscTitle
				{
					style=0;
					colorBackground[]=
					{
						"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
						"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
						"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
						"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"
					};
					idc=34619;
					text="";
					x="0 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="0 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="20 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class MainBackground: QS_RD_dialog_RscText
				{
					idc=34622;
					x="0 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="20 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="20 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,0.80000001};
				};
				class Column1: QS_RD_dialog_RscText
				{
					idc=34620;
					x="0.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="19 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="17.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={1,1,1,0.2};
				};
				class Column2: QS_RD_dialog_RscText
				{
					idc=34623;
					x="9.05 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="1.9 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="17.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={1,1,1,0.1};
				};
				class Column3: QS_RD_dialog_RscText
				{
					idc=34624;
					x="12.85 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="1.9 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="17.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={1,1,1,0.1};
				};
				class Column4: QS_RD_dialog_RscText
				{
					idc=34625;
					x="15.7 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="0.95 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="17.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={1,1,1,0.1};
				};
				class Column5: QS_RD_dialog_RscText
				{
					idc=34626;
					x="17.6 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="0.95 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="17.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={1,1,1,0.1};
				};
				class TextName: QS_RD_dialog_RscText
				{
					style=1;
					idc=34621;
					text="$STR_DISP_GAME_NAME";
					x="0.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="19.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="5.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					colorBackground[]={0,0,0,0.2};
					sizeEx="0.8 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class EditName: QS_RD_dialog_RscEdit
				{
					idc=35020;
					x="6 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="19.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="13.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					sizeEx="0.8 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					text="";
				};
				class ValueName: QS_RD_dialog_RscListNBox
				{
					columns[]={0,0.44999999,0.55000001,0.64999998,0.75,0.80000001,0.85000002,0.89999998,0.94999999};
					idc=35119;
					x="0.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="1.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="19 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="17.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					sizeEx="0.8 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class ButtonOK: QS_RD_dialog_RscButtonMenu
				{
					idc=36019;
					text="$STR_DISP_OK";
					x="15 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="21.2 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class ButtonCancel: QS_RD_dialog_RscButtonMenu
				{
					idc=36020;
					text="$STR_DISP_CANCEL";
					x="0 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="21.2 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
				class ButtonDelete: QS_RD_dialog_RscButtonMenu
				{
					idc=36021;
					text="$STR_DISP_DELETE";
					x="9.9 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y="21.2 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w="5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h="1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
			};
		};
		class MessageBox: QS_RD_dialog_RscMessageBox
		{
		};
		class TabCar: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 								0";
			idcx=930;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Car_ca.paa";
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 0 * 0.04";
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 		2) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Car";
		};
		class IconCar: QS_RD_dialog_RscPicture
		{
			idc="900 + 								0";
			idcx=900;
			x=-1;
			y=-1;
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListCar: QS_RD_dialog_RscListbox
		{
			idc="960 + 							0";
			idcx=960;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledCar: QS_RD_dialog_RscText
		{
			idc="860 + 							0";
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabTank: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 								1";
			idcx=931;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Tank_ca.paa";
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 3 * 0.04";
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 		2) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Tank";
		};
		class IconTank: QS_RD_dialog_RscPicture
		{
			idc="900 + 								1";
			idcx=901;
			x=-1;
			y=-1;
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListTank: QS_RD_dialog_RscListbox
		{
			idc="960 + 							1";
			idcx=961;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledTank: QS_RD_dialog_RscText
		{
			idc="860 + 							1";
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabHelicopter: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 							2";
			idcx=932;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Helicopter_ca.paa";
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 6 * 0.04";
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 		2) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Helicopter";
		};
		class IconHelicopter: QS_RD_dialog_RscPicture
		{
			idc="900 + 							2";
			idcx=902;
			x=-1;
			y=-1;
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListHelicopter: QS_RD_dialog_RscListbox
		{
			idc="960 + 						2";
			idcx=962;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledHelicopter: QS_RD_dialog_RscText
		{
			idc="860 + 						2";
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabPlane: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 								3";
			idcx=933;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Plane_ca.paa";
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 9 * 0.04";
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 		2) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Plane";
		};
		class IconPlane: QS_RD_dialog_RscPicture
		{
			idc="900 + 								3";
			idcx=903;
			x=-1;
			y=-1;
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListPlane: QS_RD_dialog_RscListbox
		{
			idc="960 + 							3";
			idcx=963;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledPlane: QS_RD_dialog_RscText
		{
			idc="860 + 							3";
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabNaval: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 								4";
			idcx=934;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Naval_ca.paa";
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 12 * 0.04";
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 		2) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Naval";
		};
		class IconNaval: QS_RD_dialog_RscPicture
		{
			idc="900 + 								4";
			idcx=904;
			x=-1;
			y=-1;
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListNaval: QS_RD_dialog_RscListbox
		{
			idc="960 + 							4";
			idcx=964;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledNaval: QS_RD_dialog_RscText
		{
			idc="860 + 							4";
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabStatic: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 							5";
			idcx=935;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Static_ca.paa";
			x="safezoneX + 0.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 15 * 0.04";
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 		2) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Static";
		};
		class IconStatic: QS_RD_dialog_RscPicture
		{
			idc="900 + 							5";
			idcx=905;
			x=-1;
			y=-1;
			w="(1.4 * 		2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListStatic: QS_RD_dialog_RscListbox
		{
			idc="960 + 						5";
			idcx=965;
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledStatic: QS_RD_dialog_RscText
		{
			idc="860 + 						5";
			x="safezoneX + (1 + 1.5 * 	2) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="safezoneH - 2.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabCrew: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 							18";
			idcx=948;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\Crew_ca.paa";
			x="safezoneX + safezoneW - 2 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 0 * 0.04";
			w="(1.4 * 	1) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 	1) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_Crew";
		};
		class IconCrew: QS_RD_dialog_RscPicture
		{
			idc="900 + 							18";
			idcx=918;
			x=-1;
			y=-1;
			w="(1.4 * 	1) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListCrew: QS_RD_dialog_RscListbox
		{
			idc="960 + 						18";
			idcx=978;
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="15 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledCrew: QS_RD_dialog_RscText
		{
			idc="860 + 						18";
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="15 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabAnimationSources: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 					19";
			idcx=949;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\AnimationSources_ca.paa";
			x="safezoneX + safezoneW - 2 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 1.5 * 0.04";
			w="(1.4 * 	1) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 	1) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_AnimationSources";
		};
		class IconAnimationSources: QS_RD_dialog_RscPicture
		{
			idc="900 + 					19";
			idcx=919;
			x=-1;
			y=-1;
			w="(1.4 * 	1) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListAnimationSources: QS_RD_dialog_RscListbox
		{
			idc="960 + 				19";
			idcx=979;
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="15 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledAnimationSources: QS_RD_dialog_RscText
		{
			idc="860 + 				19";
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="15 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
		class TabTextureSources: QS_RD_dialog_RscButtonArsenal
		{
			idc="930 + 					20";
			idcx=950;
			text="\A3\Ui_f\data\GUI\Rsc\RscDisplayGarage\TextureSources_ca.paa";
			x="safezoneX + safezoneW - 2 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 0.04 + 3 * 0.04";
			w="(1.4 * 	1) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="(1.4 * 	1) * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			tooltip="$STR_A3_RscDisplayGarage_tab_TextureSources";
		};
		class IconTextureSources: QS_RD_dialog_RscPicture
		{
			idc="900 + 					20";
			idcx=920;
			x=-1;
			y=-1;
			w="(1.4 * 	1) * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			color[]={1,1,1,0.80000001};
		};
		class ListTextureSources: QS_RD_dialog_RscListbox
		{
			idc="960 + 				20";
			idcx=980;
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="15 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="1.4 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0,0,0,0};
			colorSelectBackground[]={1,1,1,0.5};
			colorSelectBackground2[]={1,1,1,0.5};
			colorPictureSelected[]={1,1,1,1};
			colorSelect[]={1,1,1,1};
			colorSelect2[]={1,1,1,1};
			colorPictureRightSelected[]={1,1,1,1};
		};
		class ListDisabledTextureSources: QS_RD_dialog_RscText
		{
			idc="860 + 				20";
			x="safezoneX + safezoneW - 17.5 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y="safezoneY + 0.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w="15 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h="15 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			text="$STR_lib_info_na";
			style=2;
			show=0;
			colorText[]={1,1,1,0.15000001};
			shadow=0;
		};
	};
};
