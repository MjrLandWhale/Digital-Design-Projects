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
ExecStep $xv_path/bin/xsim fourBitRCASim_behav -key {Behavioral:sim_1:Functional:fourBitRCASim} -tclbatch fourBitRCASim.tcl -log simulate.log
