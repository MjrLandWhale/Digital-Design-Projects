# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.cache/wt [current_project]
set_property parent.project_path /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.srcs/sources_1/new/bitAdder.v
  /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P1/project_5_P1.srcs/sources_1/new/fourBitAddSub.v
  /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.srcs/sources_1/new/ALU.v
}
read_xdc /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.srcs/constrs_1/new/ALU_Constraints.xdc
set_property used_in_implementation false [get_files /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.srcs/constrs_1/new/ALU_Constraints.xdc]

synth_design -top ALU -part xc7a35tcpg236-1
write_checkpoint -noxdef ALU.dcp
catch { report_utilization -file ALU_utilization_synth.rpt -pb ALU_utilization_synth.pb }
