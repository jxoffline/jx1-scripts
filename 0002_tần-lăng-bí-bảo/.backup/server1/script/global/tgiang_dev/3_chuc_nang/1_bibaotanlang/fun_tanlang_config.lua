--/======================================================================================================/--
--|										 	   Tr­êng Giang DEV			    					    	 |--
--| 	Telegram: cjgawatama		  		  Github: cjgawatama				 Youtube: @HoaiNiemJX1 	 |--
--/======================================================================================================/--
--|											  CONFIG FOR TAN LANG    			 						 |--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Include Th­ ViÖn=====================================================================================/--
IncludeLib("LEAGUE")
Include("\\script\\lib\\basic.lua");
Include("\\script\\lib\\file.lua")
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/======================================================================================================/--
CONFIG_TL_ISOPEN = 1
CONFIG_DAY_OPEN_TL = 7                            
--/======================================================================================================/--
MS_CHECK_THANHTHU_DIE = 99
--/======================================================================================================/--
EXP_TL_THANHTHU = 10000000
EXP_TL_THANHTHU_NEAR = 5000000
EXP_TL_TTH = 20000000
EXP_TL_TTH_NEAR = 1000000
--/======================================================================================================/--
TG_TL_LOIVAO = 	{{2659,207,1489,3222,"\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_loivao.lua","TÇn L¨ng Long M¹ch"},}
TG_INFO_BOSS_TL	=
{
	[1]	= {n_level = 95, 	n_series = 1,	n_npcid = 2660,	tb_coords = {{1047,1233,3425,"BÝ B¶o TÇng L¨ng"}},	sz_name = "B¹ch Hæ Th¸nh Thó"},
	[2]	= {n_level = 95, 	n_series = 2,	n_npcid = 2661,	tb_coords = {{1047,1238,3598,"BÝ B¶o TÇng L¨ng"}},	sz_name = "Thanh Long Th¸nh Thó"},
	[3]	= {n_level = 95, 	n_series = 3,	n_npcid = 2662,	tb_coords = {{1047,1398,3592,"BÝ B¶o TÇng L¨ng"}},	sz_name = "HuyÒn Vò Th¸nh Thó"},
	[4]	= {n_level = 95, 	n_series = 4,	n_npcid = 2663,	tb_coords = {{1047,1395,3435,"BÝ B¶o TÇng L¨ng"}},	sz_name = "Chu T­íc Th¸nh Thó"},
	[5]	= {n_level = 95, 	n_series = 0,	n_npcid = 2664,	tb_coords = {{1047,1319,3505,"BÝ B¶o TÇng L¨ng"}},	sz_name = "Thñy Tæ - TÇn Thñy Hoµng"},

}
--/======================================================================================================/--
tbBossThanhThuItemDropAward = {
	{{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.5},},
	{{szName="Thiªn s¬n  B¶o Lé",tbProp={6,1,72,1,0,0},nCount=1,nRate=20},},
	{{szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,0,0},nCount=1,nRate=60},},
	{{szName="QuÕ Hoa Töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=15},},
	{{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},},
	{{szName="T©m T©m T­¬ng ¸nh phï",tbProp={6,1,18,1,0,0},nCount=1,nRate=10},},
	{{szName="ThiÕt La H¸n",tbProp={6,1,23,1,0,0},nCount=1,nRate=40},},
	{{szName="Bµn Nh­îc T©m Kinh",tbProp={6,1,12,1,0,0},nCount=1,nRate=20},},		
	{{szName="Phi tèc hoµn lÔ bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=5},},
	{{szName="§¹i lùc hoµn lÔ bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=5},},
	{{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=20},},
	{{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=25},},
	{{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=25},},
	{{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=3,nRate=40},},
	{{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=6,nRate=30},},
	{{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=9,nRate=10},},
	{{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=20},},
	{{szName="Tô TiÔn thuËt. B¹o Vò Lª Hoa",tbProp={6,1,27,1,0,0},nCount=1,nRate=0.1},},
	{{szName="H·m TÜnh thuËt.Lo¹n Hoµn KÝch",tbProp={6,1,28,1,0,0},nCount=1,nRate=5},},
	{{szName="Th¸i Cùc QuyÒn Phæ. QuyÓn",tbProp={6,1,33,1,0,0},nCount=1,nRate=0.1,},},
	{{szName="Th¸i Cùc KiÕm Phæ. QuyÓn",tbProp={6,1,34,1,0,0},nCount=1,nRate=5,},},
	{{szName="V©n Long KÝch. M©u ph¸p",tbProp={6,1,35,1,0,0},nCount=1,nRate=5,},},
	{{szName="L­u Tinh. §ao ph¸p",tbProp={6,1,36,1,0,0},nCount=1,nRate=0.1,},},
	{{szName="Thiªn V­¬ng Chïy Ph¸p. QuyÓn",tbProp={6,1,37,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Thiªn V­¬ng Th­¬ng ph¸p. QuyÓn",tbProp={6,1,38,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Thiªn V­¬ng §ao ph¸p.QuyÓn",tbProp={6,1,39,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Thóy Yªn §ao ph¸p",tbProp={6,1,40,1,0,0},nCount=1,nRate=5,},},			
	{{szName="Thóy Yªn Song ®ao",tbProp={6,1,41,1,0,0},nCount=1,nRate=5,},},		
	{{szName="DiÖt KiÕm MËt TÞch",tbProp={6,1,42,1,0,0},nCount=1,nRate=5,},},			
	{{szName="Nga Mi  PhËt Quang Ch­ëng MËt TÞch",tbProp={6,1,43,1,0,0},nCount=1,nRate=1,},},	
	{{szName="Phi §ao thuËt. NhiÕp Hån NguyÖt ¶nh",tbProp={6,1,45,1,0,0},nCount=1,nRate=5,},},
	{{szName="Phi Tiªu thuËt. Cöu Cung Phi Tinh",tbProp={6,1,46,1,0,0},nCount=1,nRate=5,},},	
	{{szName="Ngò §éc Ch­ëng Ph¸p. QuyÓn 1",tbProp={6,1,47,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Ngò §éc §ao ph¸p. QuyÓn 2",tbProp={6,1,48,1,0,0},nCount=1,nRate=5,},},	
	{{szName="Ngò §éc NhiÕp T©m thuËt. QuyÓn 3",tbProp={6,1,49,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Ngù Phong thuËt",tbProp={6,1,50,1,0,0},nCount=1,nRate=5,},},			
	{{szName="Ngù L«i thuËt",tbProp={6,1,51,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Ngù T©m thuËt",tbProp={6,1,52,1,0,0},nCount=1,nRate=5,},},
	{{szName="NhiÕp Hån. Chó thuËt",tbProp={6,1,53,1,0,0},nCount=1,nRate=10,},},
	{{szName="C¸i Bang Ch­ëng Ph¸p",tbProp={6,1,54,1,0,0},nCount=1,nRate=0.5,},},
	{{szName="C¸i Bang C«n ph¸p",tbProp={6,1,55,1,0,0},nCount=1,nRate=5,},},
	{{szName="ThiÕu L©m QuyÒn Ph¸p. QuyÓn 1",tbProp={6,1,56,1,0,0},nCount=1,nRate=5,},},
	{{szName="ThiÕu L©m C«n ph¸p. QuyÓn 2",tbProp={6,1,57,1,0,0},nCount=1,nRate=5,},},
	{{szName="ThiÕu L©m §ao ph¸p. QuyÓn 3",tbProp={6,1,58,1,0,0},nCount=1,nRate=0.5,},},
	{{szName="Phæ §é MËt TÞch",tbProp={6,1,59,1,0,0},nCount=1,nRate=5,},},
	--============================Drop Do Xanh====================================================================================
	{{szName = "HuyÒn ThiÕt KiÕm",tbProp = {0,0,0,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10}, nCount=1,	nRate=50},},
	{{szName = "§¹i Phong §ao",tbProp = {0,0,1,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Kim C« Bæng",tbProp = {0,0,2,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ph¸ Thiªn KÝch",tbProp = {0,0,3,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ph¸ Thiªn Chuú",tbProp = {0,0,4,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Th«n NhËt Tr¶m",tbProp = {0,0,5,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "B¸ V­¬ng Tiªu",tbProp = {0,1,0,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "To¸i NguyÖt §ao",tbProp = {0,1,1,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,	nRate=50},},
	{{szName = "Khæng T­íc Linh",tbProp = {0,1,2,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Nãn",tbProp = {0,7,random(0,13),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Y Phôc",tbProp = {0,2,random(0,28),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "D©y ChuyÒn",tbProp = {0,4,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Bao Tay",tbProp = {0,8,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "NhÉn",tbProp = {0,3,0,10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ngäc Béi",tbProp = {0,9,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Th¾t L­ng",tbProp = {0,6,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Giµy",tbProp = {0,5,random(0,3),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
				}


tbBossTTHItemDropAward = {
	{{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=100,nRate=100},},
						}
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                END                                              	 |--
--|                                                                                                      |--
--/======================================================================================================/--