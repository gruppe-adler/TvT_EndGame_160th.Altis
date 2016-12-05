//[BIS_hvt_pickupInfo,"rewards.sqf"] remoteExec ["execVM", 0, true]
//[obj_pickup_1,[bis_o2_1144,"McDiod",WEST],"OnCarrier",UNKNOWN,[obj_upload_1,obj_upload_2]]

reward_heli_1 lock false;
reward_brdm_1 lock false;
reward_brdm_2 lock false;

if (!hasInterface) exitWith {};
if (((_this select 1) select 2) != side player) exitWith {};

[["Bei den Schematics haben wir einen Schlüssel für den Helikopter gefunden."],["Im Frachtraum soll Ausrüstung zu finden sein."],[],["Außerdem war die Position von zwei BRDMs in einer Karte eingezeichnet."]] call mcd_fnc_formattedHint;

_marker = createMarkerLocal ["grad_BRDM_marker", getPos reward_brdm_1];
_marker setMarkerColorLocal "COLORINDEPENDENT";
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "mil_marker";
_marker setMarkerTextLocal "2x BRDM";
