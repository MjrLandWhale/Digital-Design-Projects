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
ExecStep $xv_path/bin/xsim RET_TFlipFlopSim_behav -key {Behavioral:sim_1:Functional:RET_TFlipFlopSim} -tclbatch RET_TFlipFlopSim.tcl -log simulate.log
