local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\120\101","\172\86\75\236"),function(v42) if (v9(v42,2)==81) then local v100=0;while true do if (v100==0) then v30=v8(v11(v42,1,1));return "";end end else local v101=0;local v102;while true do if (v101==0) then v102=v10(v8(v42,16));if v30 then local v129=v13(v102,v30);v30=nil;return v129;else return v102;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v103=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v103-(v103%1) ;else local v104=0;local v105;while true do if (v104==0) then v105=2^(v44-1) ;return (((v43%(v105 + v105))>=v105) and 1) or (0 -0) ;end end end end local function v32() local v46=0;local v47;while true do if (v46==1) then return v47;end if (0==v46) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + (11 -7) ;return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end local function v35() local v55=v34();local v56=v34();local v57=1;local v58=(v31(v56,1,20) * (2^32)) + v55 ;local v59=v31(v56,21,31);local v60=((v31(v56,32)==1) and  -1) or 1 ;if (v59==0) then if (v58==0) then return v60 * 0 ;else v59=1;v57=0 -0 ;end elseif (v59==(5272 -3225)) then return ((v58==0) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end local function v36(v61) local v62=0;local v63;local v64;while true do if (0==v62) then v63=nil;if  not v61 then v61=v34();if (v61==0) then return "";end end v62=1;end if (v62==2) then v64={};for v112=1, #v63 do v64[v112]=v10(v9(v11(v63,v112,v112)));end v62=3;end if (1==v62) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end if (3==v62) then return v14(v64);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v78=1,v69 do local v79=0;local v80;local v81;while true do if (v79==0) then v80=v32();v81=nil;v79=1;end if (v79==1) then if (v80==1) then v81=v32()~=0 ;elseif (v80==2) then v81=v35();elseif (v80==(930 -(214 + 713))) then v81=v36();end v70[v78]=v81;break;end end end v68[3]=v32();for v82=1,v34() do local v83=v32();if (v31(v83,1,1)==(0 + 0)) then local v108=v31(v83,1 + 1 ,880 -(282 + 595) );local v109=v31(v83,4,1643 -(1523 + 114) );local v110={v33(),v33(),nil,nil};if (v108==0) then v110[3]=v33();v110[4]=v33();elseif (v108==1) then v110[3]=v34();elseif (v108==2) then v110[3]=v34() -(2^16) ;elseif (v108==3) then local v132=0;while true do if (0==v132) then v110[3]=v34() -(2^16) ;v110[5 -1 ]=v33();break;end end end if (v31(v109,1,1)==1) then v110[2]=v70[v110[2]];end if (v31(v109,2,2)==1) then v110[3]=v70[v110[3]];end if (v31(v109,3,3)==1) then v110[4]=v70[v110[4]];end v65[v82]=v110;end end for v84=1,v34() do v66[v84-1 ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[3];return function(...) local v86=v75;local v87=v76;local v88=v77;local v89=v38;local v90=1;local v91= -1;local v92={};local v93={...};local v94=v20("#",...) -1 ;local v95={};local v96={};for v106=0,v94 do if (v106>=v88) then v92[v106-v88 ]=v93[v106 + 1 ];else v96[v106]=v93[v106 + 1 ];end end local v97=(v94-v88) + 1 ;local v98;local v99;while true do local v107=0;while true do if (v107==0) then v98=v86[v90];v99=v98[1];v107=1;end if (v107==1) then if (v99<=38) then if (v99<=18) then if (v99<=8) then if (v99<=3) then if (v99<=1) then if (v99==(1065 -(68 + 997))) then v96[v98[2]]=v96[v98[3]];else local v137=0;local v138;local v139;local v140;while true do if (v137==1) then v140=0;for v333=v138,v98[4] do v140=v140 + 1 ;v96[v333]=v139[v140];end break;end if (0==v137) then v138=v98[1272 -(226 + 1044) ];v139={v96[v138](v21(v96,v138 + 1 ,v91))};v137=1;end end end elseif (v99==2) then if v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end else local v141=v98[2];v96[v141]=v96[v141](v21(v96,v141 + 1 ,v91));end elseif (v99<=5) then if (v99==4) then local v143=0;local v144;local v145;while true do if (v143==1) then for v336=v144 + 1 ,v91 do v15(v145,v96[v336]);end break;end if (v143==0) then v144=v98[8 -6 ];v145=v96[v144];v143=1;end end else v96[v98[2]]=v96[v98[120 -(32 + 85) ]]%v98[4] ;end elseif (v99<=6) then v96[v98[2]]=v96[v98[3 + 0 ]][v98[4]];elseif (v99>7) then local v249=0;local v250;while true do if (0==v249) then v250=v98[2];v96[v250]=v96[v250](v96[v250 + 1 ]);break;end end else local v251=0;local v252;while true do if (v251==0) then v252=v98[2];v96[v252]=v96[v252]();break;end end end elseif (v99<=13) then if (v99<=10) then if (v99>(2 + 7)) then local v149=v98[2];local v150,v151=v89(v96[v149](v21(v96,v149 + 1 ,v98[960 -(892 + 65) ])));v91=(v151 + v149) -1 ;local v152=0;for v237=v149,v91 do local v238=0;while true do if (v238==0) then v152=v152 + 1 ;v96[v237]=v150[v152];break;end end end else do return v96[v98[2]]();end end elseif (v99<=11) then v96[v98[4 -2 ]]= #v96[v98[3]];elseif (v99>12) then v96[v98[2]]=v98[3];else local v255=0;local v256;while true do if (v255==0) then v256=v98[2];v96[v256](v96[v256 + 1 ]);break;end end end elseif (v99<=15) then if (v99==14) then local v154=0;local v155;while true do if (v154==0) then v155=v98[2];v96[v155]=v96[v155](v21(v96,v155 + 1 ,v98[3]));break;end end else v96[v98[2]]=v73[v98[3]];end elseif (v99<=16) then local v158=v98[2];local v159,v160=v89(v96[v158](v21(v96,v158 + 1 ,v98[3])));v91=(v160 + v158) -(1 -0) ;local v161=0;for v239=v158,v91 do local v240=0;while true do if (v240==0) then v161=v161 + 1 ;v96[v239]=v159[v161];break;end end end elseif (v99>17) then do return v96[v98[2]]();end else local v257=0;local v258;while true do if (0==v257) then v258=v98[2];v96[v258]=v96[v258]();break;end end end elseif (v99<=28) then if (v99<=23) then if (v99<=20) then if (v99>19) then v90=v98[3];else local v163=0;local v164;while true do if (v163==0) then v164=v98[2];v96[v164]=v96[v164](v21(v96,v164 + 1 ,v98[3]));break;end end end elseif (v99<=21) then v96[v98[2]]=v74[v98[3]];elseif (v99>22) then v96[v98[2]]();else v96[v98[3 -1 ]]=v73[v98[3]];end elseif (v99<=25) then if (v99==24) then if (v96[v98[2]]==v98[4]) then v90=v90 + (351 -(87 + 263)) ;else v90=v98[3];end else local v167=0;local v168;local v169;local v170;while true do if (v167==0) then v168=v87[v98[3]];v169=nil;v167=1;end if (v167==2) then for v341=1,v98[4] do local v342=0;local v343;while true do if (v342==0) then v90=v90 + 1 ;v343=v86[v90];v342=1;end if (v342==1) then if (v343[1]==0) then v170[v341-1 ]={v96,v343[3]};else v170[v341-1 ]={v73,v343[3]};end v95[ #v95 + 1 ]=v170;break;end end end v96[v98[2]]=v40(v168,v169,v74);break;end if (v167==1) then v170={};v169=v18({},{[v7("\150\130\230\133\168\172\165","\204\201\221\143\235")]=function(v344,v345) local v346=0;local v347;while true do if (v346==0) then v347=v170[v345];return v347[1][v347[2]];end end end,[v7("\72\186\240\68\96\140\240\69\114\157","\33\23\229\158")]=function(v348,v349,v350) local v351=0;local v352;while true do if (v351==0) then v352=v170[v349];v352[1][v352[2]]=v350;break;end end end});v167=2;end end end elseif (v99<=26) then v96[v98[2]]();elseif (v99>27) then local v262=v98[2 + 0 ];local v263=v98[4];local v264=v262 + 2 ;local v265={v96[v262](v96[v262 + 1 ],v96[v264])};for v313=1,v263 do v96[v264 + v313 ]=v265[v313];end local v266=v265[1];if v266 then local v353=0;while true do if (v353==0) then v96[v264]=v266;v90=v98[3];break;end end else v90=v90 + 1 ;end else local v267=0;local v268;local v269;while true do if (v267==1) then v96[v268 + 1 ]=v269;v96[v268]=v269[v98[4]];break;end if (v267==0) then v268=v98[2];v269=v96[v98[3]];v267=1;end end end elseif (v99<=33) then if (v99<=30) then if (v99>29) then local v171=0;local v172;local v173;local v174;while true do if (v171==1) then v174=v96[v172 + 2 ];if (v174>0) then if (v173>v96[v172 + 1 ]) then v90=v98[3];else v96[v172 + 3 ]=v173;end elseif (v173<v96[v172 + 1 ]) then v90=v98[3];else v96[v172 + 3 ]=v173;end break;end if (v171==0) then v172=v98[2];v173=v96[v172];v171=1;end end else local v175=v98[2];local v176,v177=v89(v96[v175](v96[v175 + 1 + 0 ]));v91=(v177 + v175) -(3 -2) ;local v178=0;for v241=v175,v91 do local v242=0;while true do if (v242==0) then v178=v178 + 1 ;v96[v241]=v176[v178];break;end end end end elseif (v99<=31) then v96[v98[2]]=v96[v98[3]]%v96[v98[956 -(802 + 150) ]] ;elseif (v99==(85 -53)) then local v270=0;local v271;local v272;local v273;while true do if (v270==1) then v273=v96[v271] + v272 ;v96[v271]=v273;v270=2;end if (2==v270) then if (v272>0) then if (v273<=v96[v271 + 1 ]) then local v423=0;while true do if (v423==0) then v90=v98[3];v96[v271 + 3 ]=v273;break;end end end elseif (v273>=v96[v271 + (1 -0) ]) then v90=v98[3];v96[v271 + 3 ]=v273;end break;end if (v270==0) then v271=v98[2];v272=v96[v271 + 2 ];v270=1;end end else local v274=0;local v275;local v276;while true do if (v274==1) then for v401=v275 + 1 ,v91 do v15(v276,v96[v401]);end break;end if (0==v274) then v275=v98[2];v276=v96[v275];v274=1;end end end elseif (v99<=35) then if (v99==34) then local v180=0;local v181;while true do if (v180==0) then v181=v98[2 + 0 ];do return v21(v96,v181,v91);end break;end end else local v182=0;local v183;while true do if (v182==0) then v183=v98[2];do return v96[v183](v21(v96,v183 + 1 ,v98[3]));end break;end end end elseif (v99<=36) then local v184=v98[2];do return v96[v184](v21(v96,v184 + 1 ,v98[3]));end elseif (v99==37) then for v321=v98[2],v98[3] do v96[v321]=nil;end elseif v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99<=57) then if (v99<=(1044 -(915 + 82))) then if (v99<=42) then if (v99<=40) then if (v99>39) then local v185=v98[5 -3 ];local v186=v96[v98[3]];v96[v185 + 1 ]=v186;v96[v185]=v186[v98[4]];else local v190=0;local v191;local v192;local v193;while true do if (v190==0) then v191=v87[v98[2 + 1 ]];v192=nil;v190=1;end if (v190==1) then v193={};v192=v18({},{[v7("\111\133\200\181\84\191\217","\219\48\218\161")]=function(v357,v358) local v359=v193[v358];return v359[1][v359[2]];end,[v7("\219\78\114\76\204\70\238\224\116\100","\128\132\17\28\41\187\47")]=function(v360,v361,v362) local v363=v193[v361];v363[1][v363[2]]=v362;end});v190=2;end if (v190==2) then for v365=1,v98[4] do v90=v90 + 1 ;local v366=v86[v90];if (v366[1 -0 ]==0) then v193[v365-1 ]={v96,v366[3]};else v193[v365-1 ]={v73,v366[3]};end v95[ #v95 + (1188 -(1069 + 118)) ]=v193;end v96[v98[2]]=v40(v191,v192,v74);break;end end end elseif (v99>41) then v96[v98[2]]=v96[v98[3]]%v96[v98[4]] ;else local v195=0;local v196;local v197;local v198;local v199;while true do if (v195==1) then v91=(v198 + v196) -(1 -0) ;v199=0;v195=2;end if (v195==2) then for v368=v196,v91 do local v369=0;while true do if (v369==0) then v199=v199 + 1 ;v96[v368]=v197[v199];break;end end end break;end if (v195==0) then v196=v98[2];v197,v198=v89(v96[v196](v96[v196 + (2 -1) ]));v195=1;end end end elseif (v99<=44) then if (v99==43) then v96[v98[2]]=v40(v87[v98[3]],nil,v74);else local v201=v98[2];local v202=v98[4];local v203=v201 + 2 ;local v204={v96[v201](v96[v201 + 1 ],v96[v203])};for v243=1,v202 do v96[v203 + v243 ]=v204[v243];end local v205=v204[1];if v205 then v96[v203]=v205;v90=v98[3];else v90=v90 + 1 ;end end elseif (v99<=(8 + 37)) then local v206=v98[2];do return v21(v96,v206,v91);end elseif (v99>(81 -35)) then v96[v98[2]]= #v96[v98[3]];else v96[v98[2]]=v96[v98[3]] + v98[4] ;end elseif (v99<=52) then if (v99<=49) then if (v99>48) then v96[v98[2]]=v96[v98[3]]%v98[4] ;else local v208=0;local v209;local v210;local v211;local v212;while true do if (v208==1) then v91=(v211 + v209) -1 ;v212=0;v208=2;end if (v208==2) then for v370=v209,v91 do v212=v212 + 1 ;v96[v370]=v210[v212];end break;end if (v208==0) then v209=v98[2];v210,v211=v89(v96[v209](v21(v96,v209 + 1 ,v91)));v208=1;end end end elseif (v99<=50) then v96[v98[2]]=v98[3] + v96[v98[4]] ;elseif (v99>51) then local v281=v98[2];v96[v281]=v96[v281](v21(v96,v281 + 1 + 0 ,v91));else v96[v98[2]]=v40(v87[v98[794 -(368 + 423) ]],nil,v74);end elseif (v99<=54) then if (v99==53) then v96[v98[2]]=v96[v98[3]] + v98[4] ;else local v215=0;local v216;while true do if (v215==0) then v216=v98[2];v96[v216](v21(v96,v216 + 1 ,v98[3]));break;end end end elseif (v99<=(172 -117)) then local v217=0;local v218;while true do if (v217==0) then v218=v98[2];v96[v218](v21(v96,v218 + 1 ,v91));break;end end elseif (v99==56) then local v284=0;local v285;while true do if (v284==0) then v285=v98[2];v96[v285](v21(v96,v285 + 1 ,v98[3]));break;end end elseif (v96[v98[20 -(10 + 8) ]]==v98[4]) then v90=v90 + (3 -2) ;else v90=v98[445 -(416 + 26) ];end elseif (v99<=67) then if (v99<=62) then if (v99<=59) then if (v99==(185 -127)) then do return;end else local v219=0;local v220;local v221;local v222;local v223;while true do if (v219==1) then v91=(v222 + v220) -1 ;v223=0;v219=2;end if (v219==0) then v220=v98[2];v221,v222=v89(v96[v220](v21(v96,v220 + 1 ,v91)));v219=1;end if (v219==2) then for v374=v220,v91 do local v375=0;while true do if (v375==0) then v223=v223 + 1 ;v96[v374]=v221[v223];break;end end end break;end end end elseif (v99<=60) then v96[v98[2]]={};elseif (v99>61) then v90=v98[3];else do return;end end elseif (v99<=(28 + 36)) then if (v99==(110 -47)) then v96[v98[2]]=v96[v98[441 -(145 + 293) ]];else for v246=v98[2],v98[3] do v96[v246]=nil;end end elseif (v99<=65) then v96[v98[432 -(44 + 386) ]]=v74[v98[3]];elseif (v99>66) then local v287=0;local v288;local v289;local v290;while true do if (v287==1) then v290=v96[v288] + v289 ;v96[v288]=v290;v287=2;end if (2==v287) then if (v289>0) then if (v290<=v96[v288 + 1 ]) then v90=v98[3];v96[v288 + 3 ]=v290;end elseif (v290>=v96[v288 + 1 ]) then v90=v98[3];v96[v288 + 3 ]=v290;end break;end if (v287==0) then v288=v98[2];v289=v96[v288 + 2 ];v287=1;end end else v96[v98[2]]={};end elseif (v99<=72) then if (v99<=69) then if (v99>68) then v96[v98[1488 -(998 + 488) ]]=v96[v98[3]][v98[4]];else local v231=0;local v232;while true do if (v231==0) then v232=v98[2];v96[v232](v96[v232 + 1 ]);break;end end end elseif (v99<=70) then if  not v96[v98[2]] then v90=v90 + 1 ;else v90=v98[1 + 2 ];end elseif (v99==71) then local v293=v98[2];local v294={v96[v293](v21(v96,v293 + 1 ,v91))};local v295=0;for v331=v293,v98[4] do local v332=0;while true do if (v332==0) then v295=v295 + 1 ;v96[v331]=v294[v295];break;end end end else local v296=0;local v297;while true do if (0==v296) then v297=v98[2];v96[v297](v21(v96,v297 + 1 ,v91));break;end end end elseif (v99<=74) then if (v99>73) then v96[v98[2 + 0 ]]=v98[775 -(201 + 571) ];elseif  not v96[v98[2]] then v90=v90 + (1139 -(116 + 1022)) ;else v90=v98[3];end elseif (v99<=75) then local v235=v98[2];v96[v235]=v96[v235](v96[v235 + 1 ]);elseif (v99>(316 -240)) then v96[v98[2]]=v98[3] + v96[v98[4]] ;else local v300=0;local v301;local v302;local v303;while true do if (v300==0) then v301=v98[2];v302=v96[v301];v300=1;end if (v300==1) then v303=v96[v301 + 2 + 0 ];if (v303>0) then if (v302>v96[v301 + (3 -2) ]) then v90=v98[3];else v96[v301 + 3 ]=v302;end elseif (v302<v96[v301 + 1 ]) then v90=v98[3];else v96[v301 + (10 -7) ]=v302;end break;end end end v90=v90 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012413Q00013Q0020455Q0002001241000100013Q002045000100010003001241000200013Q002045000200020004001241000300053Q0006490003000A0001000100043E3Q000A0001001241000300063Q002045000400030007001241000500083Q002045000500050009001241000600083Q00204500060006000A00061900073Q000100066Q00069Q008Q00048Q00018Q00028Q00053Q001241000800013Q00204500080008000B0012410009000C3Q001241000A000D3Q000619000B0001000100056Q00078Q00098Q00088Q000A8Q000B4Q003F000C000B4Q0012000C00014Q0022000C6Q003D3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q004200025Q00124A000300014Q000B00045Q00124A000500013Q00041E0003002100012Q000F00076Q003F000800024Q000F000900014Q000F000A00024Q000F000B00034Q000F000C00044Q003F000D6Q003F000E00063Q002035000F000600012Q0010000C000F4Q0003000B3Q00022Q000F000C00034Q000F000D00044Q003F000E00014Q000B000F00014Q001F000F0006000F001032000F0001000F2Q000B001000014Q001F0010000600100010320010000100100020350010001000012Q0010000D00104Q0030000C6Q0003000A3Q0002002005000A000A00022Q00290009000A4Q003700073Q00010004200003000500012Q000F000300054Q003F000400024Q0023000300044Q002200036Q003D3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006195Q000100012Q00168Q000F000100014Q000F000200024Q000F000300024Q004200046Q000F000500034Q003F00066Q0040000700074Q0010000500074Q000400043Q000100204500040004000100124A000500024Q000E00030005000200124A000400034Q0010000200044Q000300013Q0002002639000100180001000400043E3Q001800012Q003F00016Q004200026Q0023000100024Q002200015Q00043E3Q001B00012Q000F000100044Q0012000100014Q002200016Q003D3Q00013Q00013Q00103Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403463Q002BD93ED5EF798265D7FD34832DCCE82BD828D0EF26DF29CAF237C824D1B220C2278AFE2FC225C1FE22C1268AB121CC29CEB136DD3988FA2CDF67C9F521DE65C8FD2AC36595E403053Q009C43AD4AA503063Q0057696E646F7703083Q0010B25F568829493803073Q002654D72976DC4603063Q0042752Q746F6E030E3Q007918241BF059022752C759132E1603053Q009E3076427203153Q0065D226E50048EAEB4FC93FF34E38ADC00AE47AC60903083Q009826BD569C20188503113Q00D852B452EE58BE06D559B343EE51A645F903043Q00269C37C7026Q00F03F012D3Q0006263Q002B00013Q00043E3Q002B0001001241000100013Q001241000200023Q002045000200020003001241000300024Q000F00045Q00124A000500043Q00124A000600054Q0010000400064Q003000026Q000300013Q00022Q000700010001000200201B0002000100062Q000F00045Q00124A000500073Q00124A000600084Q0010000400064Q000300023Q000200201B0003000200092Q000F00055Q00124A0006000A3Q00124A0007000B4Q000E00050007000200061900063Q000100012Q00168Q003800030006000100201B0003000200092Q000F00055Q00124A0006000C3Q00124A0007000D4Q000E000500070002000233000600014Q003800030006000100201B0003000200092Q000F00055Q00124A0006000E3Q00124A0007000F4Q000E00050007000200061900060002000100012Q00168Q003800030006000100043E3Q002C000100204500013Q00102Q003D3Q00013Q00033Q00053Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403443Q00A330042660FFB4E43611213DA2F2BF2C053466B6FEB9271F3867A0F5BF6A13397EEADEAF23151F4AEAF2A52219387AB1FEB22D153A77EAF6AA37043361EAE8A43102357603073Q009BCB44705613C5000B3Q0012413Q00013Q001241000100023Q00201B0001000100032Q000F00035Q00124A000400043Q00124A000500054Q0010000300054Q003000016Q00035Q00022Q00173Q000100012Q003D3Q00017Q000A3Q00028Q00026Q00F03F03083Q00746F737472696E6703043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q0043686172616374657203103Q0048756D616E6F6964522Q6F745061727403083Q00506F736974696F6E030C3Q00736574636C6970626F617264001C3Q00124A3Q00014Q0040000100023Q0026393Q00150001000200043E3Q00150001002639000100040001000100043E3Q00040001001241000300033Q001241000400043Q0020450004000400050020450004000400060020450004000400070020450004000400080020450004000400092Q00080003000200022Q003F000200033Q0012410003000A4Q003F000400024Q000C00030002000100043E3Q001B000100043E3Q0004000100043E3Q001B00010026393Q00020001000100043E3Q0002000100124A000100014Q0040000200023Q00124A3Q00023Q00043E3Q000200012Q003D3Q00017Q00083Q0003053Q00706169727303043Q0067616D6503073Q00436F7265477569030B3Q004765744368696C6472656E030E3Q0046696E6446697273744368696C642Q033Q009C726C03083Q0023C81D1C4873149A03073Q0044657374726F7900143Q0012413Q00013Q001241000100023Q00204500010001000300201B0001000100042Q0029000100024Q00475Q000200043E3Q0011000100201B0005000400052Q000F00075Q00124A000800063Q00124A000900074Q0010000700094Q000300053Q00020006260005001100013Q00043E3Q0011000100201B0005000400082Q000C00050002000100062C3Q00070001000200043E3Q000700012Q003D3Q00017Q00",v17(),...);