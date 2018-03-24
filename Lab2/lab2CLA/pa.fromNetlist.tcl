
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name lab2CLA -dir "D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2CLA/planAhead_run_1" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2CLA/CLA4.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2CLA} }
set_property target_constrs_file "CLA4_UCF.ucf" [current_fileset -constrset]
add_files [list {CLA4_UCF.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
