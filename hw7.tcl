#hw7 .tcl file

#inputs:
# X1, X2, reset

#outputs:
# Y1, Y2, Y3, Z

restart



add_force RESET {0 0ns}

# initialize inputs

add_force X1 {0 0ns}
add_force X2 {0 0ns}
run 100ns

add_force RESET {1 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {1 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {1 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {1 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {0 0ns}
run 100ns

add_force RESET {0 0ns}

# initialize inputs

add_force X1 {0 0ns}
add_force X2 {1 0ns}
run 100ns

add_force RESET {1 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {1 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {0 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {0 0ns}
run 100ns

add_force X1 {1 0ns}
add_force X2 {1 0ns}
run 100ns



