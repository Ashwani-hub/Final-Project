import delimited "/Users/zhu8258/OneDrive/Education/UofT/Data_Analytics_Boot_Camp/M20/Final-Project/work/data.csv", case(preserve) 

drop WT1 WT2 WT3 WT4 WT5 WT6 WT7 WT8 WT9 WT10 WT11 WT12 WT13 WT14 WT15 WT16 v1 PPSORT

drop BFNMEMB REGIND DETH123 DPGRSUM ETHDER FOL HLANO HLBEN HLBFR HLBNO KOL LWAEN LWAFR LWANO LWBEN LWBFR LWBNO MTNNO NOL CitOth Citizen IMMSTAT POB POBF POBM ATTSCH LOC_ST_RES LOCSTUD LFACT WRKACT PWOCC PWPR CFSTAT EfSize HHTYPE NOS PresMortG WEIGHT PR1 PR5 MOB1 Mob5 CapGn CFInc_AT CHDBN ChldC EFDecile EfDIMBM EFInc EICBN GovtI GTRfs HHInc HHMRKINC MrkInc OASGI OtInc SempI TotInc

drop HDGREE CIP2011 CQPPB DTYPE LSTWRK HLAEN HLAFR PKID25 PKID0_1 PKID2_5 PKID6_14 PKID15_24 REPAIR VALUE YRIMM

drop CFInc EFInc_AT EmpIn HHInc_AT Invst Retir

export delimited using "/Users/zhu8258/OneDrive/Education/UofT/Data_Analytics_Boot_Camp/M20/data_dropped.csv", datafmt replace

*aboriginal
gen aboriginal = 0
replace aboriginal = 1 if ABOID <= 5
drop ABOID
*age
gen age = AGEGRP
replace age = (5 * age) - 18
drop AGEGRP
*Age at Imm
replace AGEIMM = 0 if AGEIMM >= 88
*Education (STEM_V: stem=1)
gen STEM = 0
replace STEM = 1 if CIP2011_STEM_SUM <= 3
gen YrEd = 0
replace YrEd = 9 if SSGRAD  <= 3
replace YrEd = 12 if SSGRAD == 4
replace YrEd = 13 if SSGRAD == 5
replace YrEd = 14 if SSGRAD == 6
replace YrEd = 15 if SSGRAD == 7
replace YrEd = 16 if SSGRAD == 8
replace YrEd = 17 if SSGRAD == 9
replace YrEd = 18 if SSGRAD == 10
replace YrEd = 18 if SSGRAD == 11
replace YrEd = 21 if SSGRAD == 12
drop SSGRAD CIP2011_STEM_SUM
*Min Wage in Located Provinces and Territories (N.Canada = Northwest Terr + Nunavut + Yukon, take averge min wage of all three)
gen PrMinWage_V = 0
replace PrMinWage_V = 10.50 if PR == 10
replace PrMinWage_V = 10.75 if PR == 11
replace PrMinWage_V = 10.70 if PR == 12
replace PrMinWage_V = 10.65 if PR == 13
replace PrMinWage_V = 10.75 if PR == 24
replace PrMinWage_V = 11.25 if PR == 35
replace PrMinWage_V = 11.00 if PR == 46
replace PrMinWage_V = 10.50 if PR == 47
replace PrMinWage_V = 11.20 if PR == 48
replace PrMinWage_V = 10.45 if PR == 59
replace PrMinWage_V = (12.50 + 13.00 + 11.07) / 3 if PR == 70
gen PrMinWage_Vstat = PrMinWage_V
*Condo
drop if CONDO == 8
*Class of Woker
drop if COW == 8
drop if COW == 9
*Distance from work
drop if DIST >= 8
replace DIST = 35 if DIST == 7
replace DIST = 27 if DIST == 6
replace DIST = 22 if DIST == 5
replace DIST = 17 if DIST == 4
replace DIST = 12 if DIST == 3
replace DIST = 7 if DIST == 2
replace DIST = 2 if DIST == 1
*PartTime
drop if FPTWK >= 8
gen PartTime = 0
replace PartTime = 1 if FPTWK ==2
drop FPTWK
*GENSTAT
drop if GENSTAT == 8
*Imm satatus
drop if IMMCAT5 == 88
*LICO
drop if LICO >= 8
drop if LICO_AT >= 8

*Marital status (currently married=1; Not=0)
gen Married = 0
replace Married = 1 if MarStH == 2
replace Married = 1 if MarStH == 3
drop MarStH
*MODE
drop if MODE == 9
*Mother Tongue
drop if MTNEn == 8
drop if MTNFr == 8
*with children, no number
drop if PKIDS == 9 
*loc of work
drop if POWST >= 8
*time of commuting
drop if PWDUR >= 8
replace PWDUR = 70 if PWDUR == 5
replace PWDUR = 52 if PWDUR == 4
replace PWDUR = 37 if PWDUR == 3
replace PWDUR = 22 if PWDUR == 2
replace PWDUR = 7 if PWDUR == 1
*time leave for work
drop if PWLEAVE >= 8
replace PWLEAVE = 14 if PWLEAVE == 6
replace PWLEAVE = 9 if PWLEAVE == 5
replace PWLEAVE = 8 if PWLEAVE == 4
replace PWLEAVE = 7 if PWLEAVE == 3
replace PWLEAVE = 6 if PWLEAVE == 2
replace PWLEAVE = 5 if PWLEAVE == 1
*room#
drop if ROOMS == 88
*gender
replace Sex = Sex - 1
*Subsidy hounsing
drop if Subsidy >= 8
*owning the residence
drop if Tenur >= 8
*minority
replace VisMin = 99 if VisMin == 13
replace VisMin = 1 if VisMin <= 88
replace VisMin = 0 if VisMin == 99
*weeks worked
drop if WKSWRK == 9
replace WKSWRK = 50.5 if WKSWRK == 6
replace WKSWRK = 44 if WKSWRK == 5
replace WKSWRK = 34.5 if WKSWRK == 4
replace WKSWRK = 24.5 if WKSWRK == 3
replace WKSWRK = 14.5 if WKSWRK == 2
replace WKSWRK = 5 if WKSWRK == 1

drop TotInc_AT IncTax HCORENEED_IND LICO LICO_AT LoLIMA LoLIMB LoMBM CfSize
*Dependent Var. Cleaning
drop if Wages == 99999999

export delimited using "/Users/zhu8258/OneDrive/Education/UofT/Data_Analytics_Boot_Camp/M20/Final-Project/work/data_clean0916.csv", datafmt replace

