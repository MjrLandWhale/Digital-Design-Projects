#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.3"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim ALU_Sim_behav -key {Behavioral:sim_1:Functional:ALU_Sim} -tclbatch ALU_Sim.tcl -log simulate.log
