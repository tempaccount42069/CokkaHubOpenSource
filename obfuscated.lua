local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\163\14","\16\141\32\56"),function(v42) if (v9(v42,2)==81) then local v100=0;while true do if (v100==0) then v30=v8(v11(v42,1,1));return "";end end else local v101=0;local v102;while true do if (v101==0) then v102=v10(v8(v42,16));if v30 then local v120=0;local v121;while true do if (v120==0) then v121=v13(v102,v30);v30=nil;v120=1;end if (v120==1) then return v121;end end else return v102;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v103=0;local v104;while true do if (v103==0) then v104=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v104-(v104%1) ;end end else local v105=(5 -3)^(v44-1) ;return (((v43%(v105 + v105))>=v105) and 1) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==1) then return (v49 * 256) + v48 ;end if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end end end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35() local v54=v34();local v55=v34();local v56=1;local v57=(v31(v55,1,20) * (2^32)) + v54 ;local v58=v31(v55,21,31);local v59=((v31(v55,32)==1) and  -1) or (2 -1) ;if (v58==0) then if (v57==0) then return v59 * 0 ;else v58=1;v56=0;end elseif (v58==(3951 -1904)) then return ((v57==0) and (v59 * (1/0))) or (v59 * NaN) ;end return v16(v59,v58-1023 ) * (v56 + (v57/(2^52))) ;end local function v36(v60) local v61=0;local v62;local v63;while true do if (v61==1) then v62=v11(v27,v29,(v29 + v60) -1 );v29=v29 + v60 ;v61=2;end if (v61==3) then return v14(v63);end if (v61==0) then v62=nil;if  not v60 then local v115=0;while true do if (v115==0) then v60=v34();if (v60==0) then return "";end break;end end end v61=1;end if (v61==2) then v63={};for v109=1, #v62 do v63[v109]=v10(v9(v11(v62,v109,v109)));end v61=3;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64={};local v65={};local v66={};local v67={v64,v65,nil,v66};local v68=v34();local v69={};for v77=1,v68 do local v78=v32();local v79;if (v78==1) then v79=v32()~=(0 -0) ;elseif (v78==2) then v79=v35();elseif (v78==(622 -(555 + 64))) then v79=v36();end v69[v77]=v79;end v67[3]=v32();for v81=1,v34() do local v82=0;local v83;while true do if (v82==0) then v83=v32();if (v31(v83,932 -(857 + 74) ,1)==0) then local v116=v31(v83,2,3);local v117=v31(v83,4,6);local v118={v33(),v33(),nil,nil};if (v116==(568 -(367 + 201))) then v118[3]=v33();v118[4]=v33();elseif (v116==1) then v118[3]=v34();elseif (v116==2) then v118[3]=v34() -(2^16) ;elseif (v116==3) then local v204=0;while true do if (v204==0) then v118[3]=v34() -((929 -(214 + 713))^16) ;v118[4]=v33();break;end end end if (v31(v117,1,1)==1) then v118[1 + 1 ]=v69[v118[2]];end if (v31(v117,2,2)==1) then v118[3]=v69[v118[3]];end if (v31(v117,3,3)==(1 + 0)) then v118[4]=v69[v118[4]];end v64[v81]=v118;end break;end end end for v84=1,v34() do v65[v84-1 ]=v39();end return v67;end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[2];local v76=v71[3];return function(...) local v86=v74;local v87=v75;local v88=v76;local v89=v38;local v90=1;local v91= -1;local v92={};local v93={...};local v94=v20("#",...) -1 ;local v95={};local v96={};for v106=0,v94 do if (v106>=v88) then v92[v106-v88 ]=v93[v106 + 1 ];else v96[v106]=v93[v106 + 1 ];end end local v97=(v94-v88) + (1638 -(1523 + 114)) ;local v98;local v99;while true do v98=v86[v90];v99=v98[1];if (v99<=11) then if (v99<=5) then if (v99<=(2 + 0)) then if (v99<=0) then v96[v98[2]]=v96[v98[3]];elseif (v99==1) then local v145=0;local v146;while true do if (v145==0) then v146=v98[2];do return v21(v96,v146,v91);end break;end end else v96[v98[2]]=v40(v87[v98[3]],nil,v73);end elseif (v99<=3) then do return v96[v98[2]]();end elseif (v99==4) then v96[v98[2]]();else v96[v98[2]]=v98[3];end elseif (v99<=8) then if (v99<=6) then local v133=v98[2];local v134=v96[v133];for v143=v133 + 1 ,v91 do v15(v134,v96[v143]);end elseif (v99>7) then local v150=0;local v151;while true do if (0==v150) then v151=v98[2];v96[v151]=v96[v151](v21(v96,v151 + 1 ,v91));break;end end else v96[v98[2]]=v73[v98[3]];end elseif (v99<=9) then if v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99==10) then local v155=0;local v156;while true do if (0==v155) then v156=v98[2];do return v96[v156](v21(v96,v156 + 1 ,v98[3 -0 ]));end break;end end elseif (v96[v98[2]]==v98[1069 -(68 + 997) ]) then v90=v90 + 1 ;else v90=v98[3];end elseif (v99<=17) then if (v99<=14) then if (v99<=12) then v96[v98[2]]={};elseif (v99==13) then local v157=v98[2];v96[v157]=v96[v157](v21(v96,v157 + 1 ,v98[1273 -(226 + 1044) ]));else local v159=0;local v160;local v161;local v162;local v163;local v164;while true do if (v159==2) then v98=v86[v90];v96[v98[2 + 0 ]]={};v90=v90 + 1 ;v98=v86[v90];v96[v98[1 + 1 ]]=v72[v98[3]];v90=v90 + 1 ;v159=3;end if (v159==3) then v98=v86[v90];v96[v98[2]]=v96[v98[3]];v90=v90 + 1 ;v98=v86[v90];for v253=v98[2],v98[3] do v96[v253]=nil;end v90=v90 + 1 ;v159=4;end if (v159==4) then v98=v86[v90];v164=v98[2];v162,v163=v89(v96[v164](v21(v96,v164 + (958 -(892 + 65)) ,v98[3])));v91=(v163 + v164) -1 ;v161=0 -0 ;for v255=v164,v91 do v161=v161 + 1 ;v96[v255]=v162[v161];end v159=5;end if (5==v159) then v90=v90 + (1 -0) ;v98=v86[v90];v164=v98[2];v160=v96[v164];for v258=v164 + 1 ,v91 do v15(v160,v96[v258]);end break;end if (v159==0) then v160=nil;v161=nil;v162,v163=nil;v164=nil;v96[v98[2]]=v72[v98[12 -9 ]];v90=v90 + 1 ;v159=1;end if (v159==1) then v98=v86[v90];v96[v98[119 -(32 + 85) ]]=v72[v98[3]];v90=v90 + 1 ;v98=v86[v90];v96[v98[2]]=v72[v98[3]];v90=v90 + 1 ;v159=2;end end end elseif (v99<=15) then v96[v98[2]]=v96[v98[3]][v98[4]];elseif (v99==16) then for v188=v98[2],v98[4 -1 ] do v96[v188]=nil;end else local v165=v98[2];local v166=v96[v98[3]];v96[v165 + 1 ]=v166;v96[v165]=v166[v98[4]];end elseif (v99<=20) then if (v99<=18) then local v138=0;local v139;local v140;local v141;local v142;while true do if (2==v138) then v90=v90 + 1 ;v98=v86[v90];v96[v98[2]]=v98[3];v90=v90 + 1 ;v138=3;end if (3==v138) then v98=v86[v90];v142=v98[2];v140,v141=v89(v96[v142](v21(v96,v142 + (351 -(87 + 263)) ,v98[3])));v91=(v141 + v142) -1 ;v138=4;end if (5==v138) then v142=v98[2];v96[v142]=v96[v142](v21(v96,v142 + 1 ,v91));v90=v90 + 1 ;v98=v86[v90];v138=6;end if (v138==1) then v90=v90 + 1 ;v98=v86[v90];v142=v98[2];v96[v142]=v96[v142](v21(v96,v142 + 1 ,v98[3]));v138=2;end if (v138==6) then if (v96[v98[2]]==v98[4]) then v90=v90 + (181 -(67 + 113)) ;else v90=v98[3];end break;end if (v138==0) then v139=nil;v140,v141=nil;v142=nil;v96[v98[2]]=v98[3];v138=1;end if (v138==4) then v139=0;for v206=v142,v91 do v139=v139 + 1 ;v96[v206]=v140[v139];end v90=v90 + 1 ;v98=v86[v90];v138=5;end end elseif (v99==19) then local v170=0;local v171;local v172;local v173;while true do if (v170==2) then for v259=1 + 0 ,v98[4] do local v260=0;local v261;while true do if (v260==1) then if (v261[1]==0) then v173[v259-1 ]={v96,v261[3]};else v173[v259-(1 + 0) ]={v72,v261[3]};end v95[ #v95 + 1 ]=v173;break;end if (v260==0) then v90=v90 + 1 ;v261=v86[v90];v260=1;end end end v96[v98[2]]=v40(v171,v172,v73);break;end if (v170==0) then v171=v87[v98[3]];v172=nil;v170=1;end if (v170==1) then v173={};v172=v18({},{[v7("\195\101\221\142\119\249\66","\19\156\58\180\224")]=function(v262,v263) local v264=v173[v263];return v264[1][v264[2]];end,[v7("\218\105\84\205\242\95\84\204\224\78","\168\133\54\58")]=function(v265,v266,v267) local v268=v173[v266];v268[1][v268[2]]=v267;end});v170=2;end end else local v174=0;local v175;local v176;local v177;local v178;while true do if (2==v174) then for v270=v175,v91 do v178=v178 + 1 ;v96[v270]=v176[v178];end break;end if (0==v174) then v175=v98[2];v176,v177=v89(v96[v175](v21(v96,v175 + 1 ,v98[3])));v174=1;end if (v174==1) then v91=(v177 + v175) -1 ;v178=0;v174=2;end end end elseif (v99<=22) then if (v99==21) then do return;end else local v179=0;local v180;local v181;local v182;local v183;local v184;while true do if (3==v179) then v98=v86[v90];v96[v98[2]]=v98[3];v90=v90 + 1 ;v98=v86[v90];v179=4;end if (v179==7) then v90=v90 + 1 ;v98=v86[v90];v90=v98[3];break;end if (v179==1) then v96[v98[2]]=v73[v98[3]];v90=v90 + 1 ;v98=v86[v90];v184=v98[2];v179=2;end if (4==v179) then v184=v98[3 -1 ];v181,v182=v89(v96[v184](v21(v96,v184 + 1 ,v98[3])));v91=(v182 + v184) -1 ;v180=0;v179=5;end if (v179==2) then v183=v96[v98[955 -(802 + 150) ]];v96[v184 + (2 -1) ]=v183;v96[v184]=v183[v98[4]];v90=v90 + 1 ;v179=3;end if (v179==5) then for v273=v184,v91 do local v274=0;while true do if (v274==0) then v180=v180 + 1 + 0 ;v96[v273]=v181[v180];break;end end end v90=v90 + 1 ;v98=v86[v90];v184=v98[2];v179=6;end if (v179==0) then v180=nil;v181,v182=nil;v183=nil;v184=nil;v179=1;end if (v179==6) then v96[v184]=v96[v184](v21(v96,v184 + 1 ,v91));v90=v90 + (998 -(915 + 82)) ;v98=v86[v90];v96[v98[2]]();v179=7;end end end elseif (v99==23) then v96[v98[2]]=v72[v98[3]];else v90=v98[3];end v90=v90 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23(v7("\39\118\122\10\173\215\88\104\6\27\173\208\91\15\5\122\173\211\92\10\1\31\170\209\93\0\0\110\171\212\91\10\6\30\174\178\91\9\0\111\171\210\92\13\0\24\171\219\91\10\6\19\174\178\91\9\1\31\171\165\93\124\1\30\171\167\93\11\0\30\170\209\91\10\6\30\174\178\91\9\1\27\171\208\93\8\4\122\171\160\91\9\6\111\174\178\91\9\7\25\173\212\88\104\6\27\173\210\88\104\6\27\175\211\91\127\3\122\173\211\91\11\6\27\172\209\91\14\6\27\173\210\91\9\6\24\174\178\91\9\7\25\173\212\91\9\6\25\173\211\91\13\5\122\173\211\91\15\7\24\173\211\91\10\5\122\173\211\91\8\6\27\173\215\93\104\6\27\173\210\82\104\6\27\165\178\91\9\6\25\165\178\91\9\6\24\171\178\91\9\6\31\173\211\91\10\2\122\173\211\91\10\6\27\173\215\91\9\6\26\169\178\91\9\6\26\173\211\91\13\0\122\173\211\90\12\5\122\173\211\91\8\5\122\173\211\91\8\5\122\173\211\91\13\5\122\173\211\91\11\1\122\173\211\95\9\6\24\173\214\88\104\6\27\174\162\89\12\0\31\175\161\88\120\4\122\173\208\88\104\6\27\175\214\93\13\4\105\173\209\93\104\6\27\219\211\88\127\6\27\172\161\88\104\6\27\175\178\91\11\14\122\173\211\91\124\6\27\173\210\83\104\6\27\173\209\91\9\6\26\171\178\91\9\6\24\173\211\91\8\0\122\173\211\91\13\14\122\173\211\91\12\6\27\173\209\93\104\6\27\173\213\83\104\6\27\173\212\91\9\6\28\171\178\91\9\6\30\173\211\91\14\0\122\173\211\91\13\5\122\173\211\91\8\6\27\175\211\91\127\6\27\173\215\91\9\6\31\173\211\91\8\6\27\175\178\90\11\6\27\173\214\91\9\6\25\171\178\91\9\6\24\173\211\91\12\6\27\173\209\91\9\7\25\175\178\91\9\6\31\173\211\91\10\0\122\173\211\91\11\6\27\173\215\93\104\6\27\173\210\88\104\6\27\173\209\91\9\4\29\175\178\91\9\6\26\173\211\90\14\6\27\173\210\91\9\6\31\173\211\91\13\7\19\174\178\91\9\7\28\173\211\91\8\2\122\173\211\91\8\0\122\173\211\91\122\6\27\173\209\93\104\6\27\173\162\91\9\6\26\173\211\91\11\2\122\173\211\91\8\6\27\173\210\94\104\6\27\173\215\90\1\5\122\173\211\90\120\6\27\173\210\89\104\6\27\172\212\91\9\6\26\173\211\91\10\2\122\173\211\91\10\6\27\173\210\91\9\6\26\169\178\91\9\6\26\173\211\91\8\0\122\173\211\90\12\5\122\173\211\91\8\5\122\173\211\91\8\5\122\173\211\91\12\5\122\173\211\91\10\6\106\174\178\91\9\0\104\171\165\93\8\0\31\170\208\92\13\1\25\171\218\93\124\0\28\173\208\91\13\5\122\173\211\93\14\0\26\171\167\93\12\6\24\173\212\88\104\6\27\169\219\89\104\1\31\170\211\95\14\0\30\170\215\91\10\0\30\174\178\91\9\0\19\175\178\92\13\1\27\170\208\88\120\4\122\175\165\92\11\0\26\170\212\89\124\0\28\171\218\92\13\0\19\170\214\93\11\1\30\170\208\93\12\1\25\171\208\93\127\0\110\170\215\93\12\0\110\170\215\89\124\0\24\171\165\93\125\4\109\170\215\93\12\0\111\170\211\93\8\4\122\171\208\93\127\1\30\171\166\92\13\5\31\174\209\88\9\5\29\174\218\89\127\2\24\171\165\89\104\0\105\171\210\95\1\1\30\171\209\95\127\1\27\171\214\93\124\3\24\171\165\92\12\1\25\171\208\93\12\4\109\170\209\93\12\0\29\170\208\89\127\0\19\171\214\93\8\0\31\170\208\89\127\0\111\171\210\93\0\0\110\175\165\95\10\0\109\175\178\93\123\0\26\175\214\88\11\5\27\169\219\92\12\0\25\175\166\93\122\1\30\171\210\91\11\0\122\173\211\45\9\5\109\173\210\91\122\5\122\173\211\91\15\6\18\174\178\91\9\6\106\173\211\91\8\5\122\173\211\91\13\7\19\174\178\91\9\6\106\173\211\91\8\6\27\172\209\91\14\6\27\173\210\91\9\6\26\174\178\91\9\7\25\172\213\91\9\6\25\173\211\91\11\5\122\173\211\89\9\4\122\173\211\91\11\6\27\173\209\91\9\6\24\173\211\90\11\4\122\173\211\91\13\6\27\173\215\93\104\6\27\173\209\91\9\6\31\171\178\91\9\6\26\174\178\91\9\6\25\169\178\91\9\6\26\173\211\91\8\6\27\173\210\91\9\6\31\169\178\91\9\6\105\173\211\91\8\6\27\175\211\91\127\6\27\173\210\88\104\6\27\173\214\89\104\6\27\172\214\88\104\6\27\173\210\92\104\6\27","\227\107\57\54\43\157"),v17(),...);