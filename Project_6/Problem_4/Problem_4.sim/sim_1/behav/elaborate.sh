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
ExecStep $xv_path/bin/xelab -wto 8a31eeef5fbd452cbe3058dde235ff1d -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot fourBitMultiplierSim_behav xil_defaultlib.fourBitMultiplierSim xil_defaultlib.glbl -log elaborate.log
