#if defined AC_MASTER

	// OnPlayerDeath hook.
	public OnPlayerDeath(playerid, killerid, reason) {
		AC_players[playerid][AC_pState] &= ~AC_psSpawn;
		#if defined AC_OnPlayerDeath
			return AC_OnPlayerDeath(playerid, killerid, reason);
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnPlayerDeath
		#undef OnPlayerDeath
	#else
		#define _ALS_OnPlayerDeath
	#endif
	#define OnPlayerDeath AC_OnPlayerDeath

	#if defined AC_OnPlayerDeath
		forward AC_OnPlayerDeath(playerid, killerid, reason);
	#endif
	
#endif