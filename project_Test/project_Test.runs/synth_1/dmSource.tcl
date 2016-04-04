# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/mbrandone/Desktop/2015Year/ELEN232/project_Test/project_Test.cache/wt [current_project]
set_property parent.project_path /home/mbrandone/Desktop/2015Year/ELEN232/project_Test/project_Test.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib /home/mbrandone/Desktop/2015Year/ELEN232/project_Test/project_Test.srcs/sources_1/new/dmSource.v
read_xdc /home/mbrandone/Desktop/2015Year/ELEN232/project_Test/project_Test.srcs/constrs_1/new/dmConstraints.xdc
set_property used_in_implementation false [get_files /home/mbrandone/Desktop/2015Year/ELEN232/project_Test/project_Test.srcs/constrs_1/new/dmConstraints.xdc]

synth_design -top dmSource -part xc7a35tcpg236-1
write_checkpoint -noxdef dmSource.dcp
catch { report_utilization -file dmSource_utilization_synth.rpt -pb dmSource_utilization_synth.pb }
