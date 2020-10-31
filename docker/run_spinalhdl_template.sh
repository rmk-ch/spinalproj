#!/bin/bash

git clone https://github.com/SpinalHDL/SpinalTemplateSbt.git
cd SpinalTemplateSbt
sbt "runMain mylib.MyTopLevelVhdl"
rm -rf SpinalTemplateSbt