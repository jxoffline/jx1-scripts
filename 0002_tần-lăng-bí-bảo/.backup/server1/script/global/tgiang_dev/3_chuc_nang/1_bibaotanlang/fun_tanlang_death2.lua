--/======================================================================================================/--
--|										 	   Tr­êng Giang DEV			    					    	 |--
--| 	Telegram: cjgawatama		  		  Github: cjgawatama				 Youtube: @HoaiNiemJX1 	 |--
--/======================================================================================================/--
--|								     FUNCTION BOSS TAN THUY HOANG DEATH      			 				 |--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Include Th­ ViÖn=====================================================================================/--
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_config.lua")--/Config ---|--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Hµm Thùc Thi=========================================================================================/--
--/-0-MAIN-----------------------------------------------------------------------------------------------|--
function main()
	dofile("script/global/tgiang_dev/3_chuc_nang/1_bibaotanlang/fun_tanlang_death2.lua")
end
--/-1-Hµm thùc thi khi boss chÕt-------------------------------------------------------------------------|--
function OnDeath( nNpcIndex )
	--/-Item r¬i ra tõ boss, tuú chØnh ë file config_award-----------
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbBossThanhThuItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
    tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbBossTTHItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	--/-PhÇn th­ëng giÕt boss-----------
    local nTeamSize = GetTeamSize();
	local szName; 
	--/-PhÇn th­ëng giÕt boss - Team-----------
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, EXP_TL_TTH, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Boss TÇn Thuû Hoµng "));
			Msg2Player("<color=yellow>§¹i hiÖp ®· ®¸nh chÕt boss nhËn th­ëng: <color> "..EXP_TL_TTH)
		end
	else 
	--/-PhÇn th­ëng giÕt boss - Mét m×nh-----------
		szName = GetName();
		PlayerFunLib:AddExp(EXP_TL_TTH, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Boss TÇn Thuû Hoµng "));
		Msg2Player("<color=green>§¹i hiÖp nhËn ®­îc kinh nghiÖm giÕt boss: <color>"..EXP_TL_TTH)
	end
	--/-PhÇn th­ëng giÕt boss - §øng gÇn boss-----------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, EXP_TL_TTH_NEAR, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc Boss TÇn Thuû Hoµng "));
		Msg2Player("<color=blue>§¹i hiÖp nhËn ®­îc kinh nghiÖm ®øng gÇn boss: <color>"..EXP_TL_TTH_NEAR)
	end
	--/-Th«ng b¸o tiªu diÖt-----------	
	local szNews = format("§¹i hiÖp <color=yellow>%s<color> t¹i <color=yellow>%s<color> ®· tiªu diÖt thµnh c«ng <color=yellow>%s<color>!", GetName(), SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);

end;
--/-2-hµm xo¸ boss---------------------------------------------------------------------------------------|--

function OnTimer(nNpcIndex, nTimeOut)
	DelNpc(nNpcIndex);
end
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                END                                              	 |--
--|                                                                                                      |--
--/======================================================================================================/--
