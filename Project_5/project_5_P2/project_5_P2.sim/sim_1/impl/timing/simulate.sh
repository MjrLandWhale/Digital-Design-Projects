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
ExecStep $xv_path/bin/xsim fourBitAddSubSim_time_impl -key {Post-Implementation:sim_1:Timing:fourBitAddSubSim} -tclbatch fourBitAddSubSim.tcl -log simulate.log
