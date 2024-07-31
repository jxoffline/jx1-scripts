--/======================================================================================================/--
--|										 	   Tr­êng Giang DEV			    					    	 |--
--| 	Telegram: cjgawatama		  		  Github: cjgawatama				 Youtube: @HoaiNiemJX1 	 |--
--/======================================================================================================/--
--|									   FUNCTION BOSS TAN LANG ENTER POINT      							 |--
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
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\dailogsys\\g_dialog.lua");
Include("\\script\\activitysys\\functionlib.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_tanlang_config.lua")--/Config ---|--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Hµm Thùc Thi=========================================================================================/--
--/-0-MAIN-----------------------------------------------------------------------------------------------|--
function main()
dofile("script/global/tgiang_dev/3_chuc_nang/1_bibaotanlang/fun_loivao.lua")
local hour = tonumber (date("%H"))
local day = tonumber(date("%w"))
    --207,1486,3228
    if CONFIG_TL_ISOPEN == 0 then
        return
    end

    if CONFIG_DAY_OPEN_TL == 7 then
        entercave()
        return
    end

    if day == CONFIG_DAY_OPEN_TL then
        entercave()
        return
    else
        Talk(1, "", "B¹n t×m ®Õn n÷a ngµy vÉn kh«ng t×m thÊy lèi vµo");  
    end
        
end

function entercave()
    NewWorld(1047,1319,3503)
    SetFightState(1)
end

function no()
end;
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                END                                              	 |--
--|                                                                                                      |--
--/======================================================================================================/--