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
ExecStep $xv_path/bin/xelab -wto dcdc30860bd94c02b6ced9134415ae39 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Problem_2_sim_behav xil_defaultlib.Problem_2_sim xil_defaultlib.glbl -log elaborate.log
