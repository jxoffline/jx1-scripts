--/======================================================================================================/--
--|										 	   Tr��ng Giang DEV			    					    	 |--
--| 	Telegram: cjgawatama		  		  Github: cjgawatama				 Youtube: @HoaiNiemJX1 	 |--
--/======================================================================================================/--
--|										FUNCTION CALL BOSS TAN LANG      			 					 |--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Include Th� Vi�n=====================================================================================/--
IncludeLib("LEAGUE")
Include("\\script\\lib\\basic.lua");
Include("\\script\\lib\\file.lua")
Include("\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_config.lua")--/Config ---|--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=H�m Th�c Thi=========================================================================================/--
--/-0-MAIN-----------------------------------------------------------------------------------------------|--
function main()
	dofile("script/global/tgiang_dev/3_chuc_nang/1_bibaotanlang/fun_tanlang_main.lua")
end
function add_loivaotanlang()
	add_dialognpc(TG_TL_LOIVAO)
end
--/-1-H�m G�i Boss---------------------------------------------------------------------------------------|--
function Tgiang_GoiBossTL1()
	SetMissionV(MS_CHECK_THANHTHU_DIE, 0);
	for i = 1, 4 do
		local nlvl, nseries, nid, tb_coords, szname	= 	TG_INFO_BOSS_TL[i].n_level,
                                                        TG_INFO_BOSS_TL[i].n_series,
                                                        TG_INFO_BOSS_TL[i].n_npcid,
                                                        TG_INFO_BOSS_TL[i].tb_coords, 
                                                        TG_INFO_BOSS_TL[i].sz_name;
		local nIdx		= random(getn(tb_coords));
		local nworldidx, nx, ny, nmaps	=   SubWorldID2Idx(tb_coords[nIdx][1]),       --- tb_coords[nIdx][1],
                                            tb_coords[nIdx][2] * 32,
                                            tb_coords[nIdx][3] * 32,
                                            tb_coords[nIdx][4];
		if (nworldidx >= 0) then
			local nNpcIndex = AddNpcEx(nid, nlvl, nseries, nworldidx, nx, ny, 1, szname, 1);
			--/-��t script cho boss-----------
			SetNpcScript(nNpcIndex,"\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_death.lua")
			SetNpcTimer(nNpcIndex, 60*60*18);
		end
	end 
	--/-Th�ng b�o boss k�nh th�ng b�o-----------
	local szNews = "<color=wood>B� B�o T�n L�ng �� m�, h�y nhanh ch�n ��n tranh �o�t b�o v�t.<color>"
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");	
	AddGlobalCountNews("<color=fire>Tr�i ��t bi�n s�c, B� B�o T�n L�ng d��ng nh� �� n�i l�n m�t ��t mang theo v� s� b� b�o<color>", 2)
	SubWorld = nOldSubWorld;
end;

function Tgiang_GoiBossTL2()
	SetMissionV(MS_CHECK_THANHTHU_DIE, 0);
	--/-Th�ng b�o boss k�nh th�ng b�o-----------
	local szNews = "<color=wood>M�t l�n kh�i �en m� m�t to� ra kh�p T�n L�ng, m�t gi�ng c��i l�n vang l�n:<color><color=fire> Ha Ha Ha... N�u �� ��n r�i th� � l�i v�i Tr�m �i<color>"
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");	
	--/-Th�ng b�o boss k�nh Server-----------
	AddGlobalCountNews("<color=fire>Thu� T� - T�n Thu� Ho�ng �� ���c h�i sinh.<color>", 2)
	local nlvl, nseries, nid, tb_coords, szname	= 	TG_INFO_BOSS_TL[5].n_level,
													TG_INFO_BOSS_TL[5].n_series,
													TG_INFO_BOSS_TL[5].n_npcid,
													TG_INFO_BOSS_TL[5].tb_coords, 
													TG_INFO_BOSS_TL[5].sz_name;
	local nworldidx, nx, ny, nmaps	=   SubWorldID2Idx(tb_coords[1][1]),
										tb_coords[1][2] * 32,
										tb_coords[1][3] * 32,
										tb_coords[1][4];							
	local nNpcIndex = AddNpcEx(nid,nlvl, nseries, nworldidx, nx, ny, 1, szname, 1);
	SetNpcScript(nNpcIndex,"\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_death2.lua")
	SetNpcTimer(nNpcIndex, 60*60*18);
	SubWorld = nOldSubWorld;

end;

--/======================================================================================================/--
--|                                                                                                      |--
--|                                                END                                              	 |--
--|                                                                                                      |-- 
--/======================================================================================================/--