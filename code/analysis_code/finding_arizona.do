* Project: Phillips Curve Replication 
* Task: Extension, Part 4
* Author: MFiehn
* Last Edit: 12.6.2024


clear all
set more off
set matsize 800

local install_packages = "no"

if "`install_packages'" == "yes" {
ssc install reghdfe
ssc install ranktest
ssc install moremata
ssc install carryforward
ssc install ivreg2
ssc install ftools
ssc install ivreghdfe
ssc install binscatter
}
*****************************************************************************
****************Step 0: Set the local name with your name ********************
*****************************************************************************
local name = "Martha"

* set your path under your name

if "`name'" == "Martha" { 
cd "C:\Users\Martha\Dropbox\UCSD\Year 1 Quarter 1\Computation\Phillips_Curve_Rep_Part4\"
}



* The dataset contains these variables year state quarter mean_une statecode date constant infl_reg rp qt_bartik_sa
use "data\data_reg.dta", clear

* Visualize the data anomaly for Arizona 
twoway line infl_reg year, by(statecode, title("Non-tradeable inflation by state") ) ///
	name("infl_reg", replace) ytitle("Inflation") 
	graph export "Output\infl_reg_state.png", as(png) name("infl_reg") replace

	
twoway line mean_une year, by(statecode, title("Mean unemployment rate by state")) ///
	name("mean_une_state", replace) ytitle("Unemploynment Rate")
	graph export "Output\mean_une_state.png", as(png) name("mean_une_state") replace

	   
	   
						

