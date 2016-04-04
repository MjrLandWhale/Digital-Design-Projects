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
ExecStep $xv_path/bin/xelab -wto 3b6cfa4925c64777a0b0c36f0acfbb75 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot RET_TFlipFlopSim_behav xil_defaultlib.RET_TFlipFlopSim xil_defaultlib.glbl -log elaborate.log
