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
ExecStep $xv_path/bin/xsim Problem_1_sim_behav -key {Behavioral:sim_1:Functional:Problem_1_sim} -tclbatch Problem_1_sim.tcl -log simulate.log
