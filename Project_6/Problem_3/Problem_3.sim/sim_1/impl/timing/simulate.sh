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
ExecStep $xv_path/bin/xsim fourBitCLASim_time_impl -key {Post-Implementation:sim_1:Timing:fourBitCLASim} -tclbatch fourBitCLASim.tcl -log simulate.log
