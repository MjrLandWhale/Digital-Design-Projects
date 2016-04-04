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
ExecStep $xv_path/bin/xelab -wto 18f85d2b845f4b9b8b0d444df73bcc55 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot dmSim_behav xil_defaultlib.dmSim xil_defaultlib.glbl -log elaborate.log
