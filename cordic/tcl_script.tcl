set Project     cordiccart2pol
set Solution    solution1
set Device      "xcu280-fsvh2892-2l-e"
set Flow        "vitis"
set Clock       10

open_project $Project -reset

set_top cordiccart2pol

add_files cordiccart2pol.cpp -cflags -I.
add_files cordiccart2pol.h -cflags -I. 
add_files -tb cordiccart2pol_test.cpp -cflags -I.

open_solution -flow_target $Flow -reset $Solution
set_part $Device
create_clock -period $Clock

csim_design
csynth_design
cosim_design

exit