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
echo "xvlog -m64 --relax -prj Problem_2_sim_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj Problem_2_sim_vlog.prj 2>&1 | tee compile.log
