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
ExecStep $xv_path/bin/xsim P_2_Sim_behav -key {Behavioral:sim_1:Functional:P_2_Sim} -tclbatch P_2_Sim.tcl -log simulate.log
