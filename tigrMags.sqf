if (!isServer) exitWith {};

params ["_vehicle"];

//remove some PK mags
for "_i" from 0 to 10 do {
    _vehicle removeMagazineTurret ["rhs_mag_762x54mm_100",[0]];
};

//remove GL mags
_vehicle removeMagazinesTurret ["RHS_mag_VOG30_30",[0]];
_vehicle removeMagazinesTurret ["RHS_mag_VOG30_30",[1]];
