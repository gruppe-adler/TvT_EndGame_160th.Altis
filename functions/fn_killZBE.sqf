/*  Kills ZBE Caching slowly and painfully
*
*/
if (!isServer) exitWith {};

[] spawn {
    {
        _x setFSMVariable ["_distance", 99999];
    } forEach zbe_AIFSMs;

    {
        _x setFSMVariable ["_zbe_dist", 99999];
    } forEach zbe_VehicleFSMs;

    sleep 20;
    zbe_RUN = false;
    diag_log "fn_killZBE - ZBE CACHING KILLED.";
};
