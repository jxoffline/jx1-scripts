--/======================================================================================================/--
--|										 	   Tr��ng Giang DEV			    					    	 |--
--| 	Telegram: cjgawatama		  		  Github: cjgawatama				 Youtube: @HoaiNiemJX1 	 |--
--/======================================================================================================/--
--|											  CONFIG FOR TAN LANG    			 						 |--
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                                                                      |--
--|                                                                                                      |--
--/=Include Th� Vi�n=====================================================================================/--
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
TG_TL_LOIVAO = 	{{2659,207,1489,3222,"\\script\\global\\tgiang_dev\\3_chuc_nang\\1_bibaotanlang\\fun_loivao.lua","T�n L�ng Long M�ch"},}
TG_INFO_BOSS_TL	=
{
	[1]	= {n_level = 95, 	n_series = 1,	n_npcid = 2660,	tb_coords = {{1047,1233,3425,"B� B�o T�ng L�ng"}},	sz_name = "B�ch H� Th�nh Th�"},
	[2]	= {n_level = 95, 	n_series = 2,	n_npcid = 2661,	tb_coords = {{1047,1238,3598,"B� B�o T�ng L�ng"}},	sz_name = "Thanh Long Th�nh Th�"},
	[3]	= {n_level = 95, 	n_series = 3,	n_npcid = 2662,	tb_coords = {{1047,1398,3592,"B� B�o T�ng L�ng"}},	sz_name = "Huy�n V� Th�nh Th�"},
	[4]	= {n_level = 95, 	n_series = 4,	n_npcid = 2663,	tb_coords = {{1047,1395,3435,"B� B�o T�ng L�ng"}},	sz_name = "Chu T��c Th�nh Th�"},
	[5]	= {n_level = 95, 	n_series = 0,	n_npcid = 2664,	tb_coords = {{1047,1319,3505,"B� B�o T�ng L�ng"}},	sz_name = "Th�y T� - T�n Th�y Ho�ng"},

}
--/======================================================================================================/--
tbBossThanhThuItemDropAward = {
	{{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.5},},
	{{szName="Thi�n s�n  B�o L�",tbProp={6,1,72,1,0,0},nCount=1,nRate=20},},
	{{szName="B�ch Qu� L�",tbProp={6,1,73,1,0,0},nCount=1,nRate=60},},
	{{szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=15},},
	{{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},},
	{{szName="T�m T�m T��ng �nh ph�",tbProp={6,1,18,1,0,0},nCount=1,nRate=10},},
	{{szName="Thi�t La H�n",tbProp={6,1,23,1,0,0},nCount=1,nRate=40},},
	{{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,0,0},nCount=1,nRate=20},},		
	{{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=5},},
	{{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=5},},
	{{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=20},},
	{{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=25},},
	{{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=25},},
	{{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=3,nRate=40},},
	{{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=6,nRate=30},},
	{{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=9,nRate=10},},
	{{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=20},},
	{{szName="T� Ti�n thu�t. B�o V� L� Hoa",tbProp={6,1,27,1,0,0},nCount=1,nRate=0.1},},
	{{szName="H�m T�nh thu�t.Lo�n Ho�n K�ch",tbProp={6,1,28,1,0,0},nCount=1,nRate=5},},
	{{szName="Th�i C�c Quy�n Ph�. Quy�n",tbProp={6,1,33,1,0,0},nCount=1,nRate=0.1,},},
	{{szName="Th�i C�c Ki�m Ph�. Quy�n",tbProp={6,1,34,1,0,0},nCount=1,nRate=5,},},
	{{szName="V�n Long K�ch. M�u ph�p",tbProp={6,1,35,1,0,0},nCount=1,nRate=5,},},
	{{szName="L�u Tinh. �ao ph�p",tbProp={6,1,36,1,0,0},nCount=1,nRate=0.1,},},
	{{szName="Thi�n V��ng Ch�y Ph�p. Quy�n",tbProp={6,1,37,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Thi�n V��ng Th��ng ph�p. Quy�n",tbProp={6,1,38,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Thi�n V��ng �ao ph�p.Quy�n",tbProp={6,1,39,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Th�y Y�n �ao ph�p",tbProp={6,1,40,1,0,0},nCount=1,nRate=5,},},			
	{{szName="Th�y Y�n Song �ao",tbProp={6,1,41,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Di�t Ki�m M�t T�ch",tbProp={6,1,42,1,0,0},nCount=1,nRate=5,},},			
	{{szName="Nga Mi  Ph�t Quang Ch��ng M�t T�ch",tbProp={6,1,43,1,0,0},nCount=1,nRate=1,},},	
	{{szName="Phi �ao thu�t. Nhi�p H�n Nguy�t �nh",tbProp={6,1,45,1,0,0},nCount=1,nRate=5,},},
	{{szName="Phi Ti�u thu�t. C�u Cung Phi Tinh",tbProp={6,1,46,1,0,0},nCount=1,nRate=5,},},	
	{{szName="Ng� ��c Ch��ng Ph�p. Quy�n 1",tbProp={6,1,47,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Ng� ��c �ao ph�p. Quy�n 2",tbProp={6,1,48,1,0,0},nCount=1,nRate=5,},},	
	{{szName="Ng� ��c Nhi�p T�m thu�t. Quy�n 3",tbProp={6,1,49,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Ng� Phong thu�t",tbProp={6,1,50,1,0,0},nCount=1,nRate=5,},},			
	{{szName="Ng� L�i thu�t",tbProp={6,1,51,1,0,0},nCount=1,nRate=5,},},		
	{{szName="Ng� T�m thu�t",tbProp={6,1,52,1,0,0},nCount=1,nRate=5,},},
	{{szName="Nhi�p H�n. Ch� thu�t",tbProp={6,1,53,1,0,0},nCount=1,nRate=10,},},
	{{szName="C�i Bang Ch��ng Ph�p",tbProp={6,1,54,1,0,0},nCount=1,nRate=0.5,},},
	{{szName="C�i Bang C�n ph�p",tbProp={6,1,55,1,0,0},nCount=1,nRate=5,},},
	{{szName="Thi�u L�m Quy�n Ph�p. Quy�n 1",tbProp={6,1,56,1,0,0},nCount=1,nRate=5,},},
	{{szName="Thi�u L�m C�n ph�p. Quy�n 2",tbProp={6,1,57,1,0,0},nCount=1,nRate=5,},},
	{{szName="Thi�u L�m �ao ph�p. Quy�n 3",tbProp={6,1,58,1,0,0},nCount=1,nRate=0.5,},},
	{{szName="Ph� �� M�t T�ch",tbProp={6,1,59,1,0,0},nCount=1,nRate=5,},},
	--============================Drop Do Xanh====================================================================================
	{{szName = "Huy�n Thi�t Ki�m",tbProp = {0,0,0,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10}, nCount=1,	nRate=50},},
	{{szName = "��i Phong �ao",tbProp = {0,0,1,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Kim C� B�ng",tbProp = {0,0,2,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ph� Thi�n K�ch",tbProp = {0,0,3,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ph� Thi�n Chu�",tbProp = {0,0,4,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Th�n Nh�t Tr�m",tbProp = {0,0,5,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "B� V��ng Ti�u",tbProp = {0,1,0,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "To�i Nguy�t �ao",tbProp = {0,1,1,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,	nRate=50},},
	{{szName = "Kh�ng T��c Linh",tbProp = {0,1,2,random(10,10),random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "N�n",tbProp = {0,7,random(0,13),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Y Ph�c",tbProp = {0,2,random(0,28),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "D�y Chuy�n",tbProp = {0,4,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Bao Tay",tbProp = {0,8,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Nh�n",tbProp = {0,3,0,10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ng�c B�i",tbProp = {0,9,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Th�t L�ng",tbProp = {0,6,random(0,1),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Gi�y",tbProp = {0,5,random(0,3),10,random(0,4),5,10},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
				}


tbBossTTHItemDropAward = {
	{{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=100,nRate=100},},
						}
--/======================================================================================================/--
--|                                                                                                      |--
--|                                                END                                              	 |--
--|                                                                                                      |--
--/======================================================================================================/--