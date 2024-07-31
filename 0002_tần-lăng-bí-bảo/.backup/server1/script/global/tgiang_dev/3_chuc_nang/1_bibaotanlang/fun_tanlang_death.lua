--/======================================================================================================/--
--|										 	   Tr≠Íng Giang DEV			    					    	 |--
--| 	Telegram: cjgawatama		  		  Github: cjgawatama				 Youtube: @HoaiNiemJX1 	 |--
--/======================================================================================================/--
--|									     FUNCTION BOSS TAN LANG DEATH      			 					 |--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Include Th≠ Vi÷n=====================================================================================/--
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_config.lua")--/Config ---|--
Include("\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_main.lua")			  ---|--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Hµm Th˘c Thi=========================================================================================/--
--/-0-MAIN-----------------------------------------------------------------------------------------------|--
function main()
	dofile("script/global/tgiang_dev/3_chuc_nang/1_bibaotanlang/fun_tanlang_death.lua")
end
--/-1-Hµm th˘c thi khi boss ch’t-------------------------------------------------------------------------|--
function OnDeath( nNpcIndex )
	--/-Item r¨i ra tı boss, tu˙ chÿnh Î file config_award-----------
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbBossThanhThuItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	--/-Ph«n th≠Îng gi’t boss-----------
    local nTeamSize = GetTeamSize();
	local szName; 
	--/-Ph«n th≠Îng gi’t boss - Team-----------
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, EXP_TL_THANHTHU, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi Boss Th∏nh ThÛ "));
			Msg2Player("<color=yellow>ßπi hi÷p Æ∑ Æ∏nh ch’t boss nhÀn th≠Îng: <color> "..EXP_TL_THANHTHU)
		end
	else 
	--/-Ph«n th≠Îng gi’t boss - MÈt m◊nh-----------
		szName = GetName();
		PlayerFunLib:AddExp(EXP_TL_THANHTHU, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi Boss Th∏nh ThÛ "));
		Msg2Player("<color=green>ßπi hi÷p nhÀn Æ≠Óc kinh nghi÷m gi’t boss: <color>"..EXP_TL_THANHTHU)
	end
	--/-Ph«n th≠Îng gi’t boss - ß¯ng g«n boss-----------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, EXP_TL_THANHTHU_NEAR, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ¯ng g«n lÛc Boss Th∏nh ThÛ "));
		Msg2Player("<color=blue>ßπi hi÷p nhÀn Æ≠Óc kinh nghi÷m Æ¯ng g«n boss: <color>"..EXP_TL_THANHTHU_NEAR)
	end
	--/-Th´ng b∏o ti™u di÷t-----------	
	local szNews = format("ßπi hi÷p <color=yellow>%s<color> tπi <color=yellow>%s<color> Æ∑ ti™u di÷t thµnh c´ng <color=yellow>%s<color>!", GetName(), SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);

	if GetMissionV(MS_CHECK_THANHTHU_DIE) < 3 then
		SetMissionV(MS_CHECK_THANHTHU_DIE, GetMissionV(MS_CHECK_THANHTHU_DIE)+1)
	else
		Tgiang_GoiBossTL2()
	end

end;
--/-2-hµm xo∏ boss---------------------------------------------------------------------------------------|--
function OnTimer(nNpcIndex, nTimeOut)
	DelNpc(nNpcIndex);
end
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                END                                              	 |--
--|                                                                                                      |--
--/======================================================================================================/--