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
ExecStep $xv_path/bin/xelab -wto c8d2563d697c47d6a9d1190bf03edcd6 -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot eightBitRCASim_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.eightBitRCASim xil_defaultlib.glbl -log elaborate.log
