
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Dani-I-VGA -dir "C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA/planAhead_run_1" -part xc3s200avq100-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA/Dani_I_VGA_TopModel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA} }
set_property target_constrs_file "mercury.ucf" [current_fileset -constrset]
add_files [list {mercury.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA/Dani_I_VGA_TopModel.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA/Dani_I_VGA_TopModel.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA/Dani_I_VGA_TopModel.twx\": $eInfo"
}
