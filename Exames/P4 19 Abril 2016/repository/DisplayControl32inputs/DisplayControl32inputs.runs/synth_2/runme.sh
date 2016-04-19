#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/Xilinx/SDK/2015.4/bin;D:/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2015.4/bin
else
  PATH=D:/Xilinx/SDK/2015.4/bin;D:/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2015.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='K:/MostFrequentlyNeeded___2014/Education2011/2015_2016/SecondSemester/CR/AulasTeoricas/Aula8_11april2016/Projects2016/REPOSITORY/DisplayControl32inputs/DisplayControl32inputs.runs/synth_2'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log DC32.vds -m64 -mode batch -messageDb vivado.pb -notrace -source DC32.tcl
