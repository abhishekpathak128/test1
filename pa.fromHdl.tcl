
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name led -dir "E:/ISE PRACTICE/led/led/planAhead_run_1" -part xc7z020clg484-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "led_blink.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {led.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top led_blink $srcset
add_files [list {led_blink.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7z020clg484-1
