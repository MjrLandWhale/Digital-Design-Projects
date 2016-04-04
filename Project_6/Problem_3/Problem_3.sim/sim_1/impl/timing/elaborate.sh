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
ExecStep $xv_path/bin/xelab -wto e3a711b46ac549c798dc1c692e5c281e -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot fourBitCLASim_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.fourBitCLASim xil_defaultlib.glbl -log elaborate.log
