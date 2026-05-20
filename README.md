# numerical-sequence-generator-verilog
A complex, hierarchical digital system designed and implemented in SystemVerilog that generates a mathematical sequence based on state dependencies, verifying hardware execution equivalence between structural and behavioral modeling.

If f(n-1) is EVEN: f(n) = (2 * f(n-2) + f(n-1) + 3) mod 256
If f(n-1) is ODD: f(n) = (2 * f(n-2) + f(n-1) - 1) mod 256
Initial Conditions:f(0) = 0, f(1) = 0

The architecture is built using a modular top-level design integrated within Xilinx Vivado:
* `top.sv`: The root module tying hardware elements and control signals together.
* `reg_8b.sv`: 8-bit registers used to store preceding sequence states.
* `counter.sv`: 11-bit counter driving internal operations and addressing.
* `ram.sv`: 2048 x 8-bit RAM block storing data history.
* `substract.sv`: Subtraction unit used for arithmetic computations.
* `compute_structural.sv`: Computes f(n) using a gate/component-level structural approach.
* `compute_behav.sv`: Computes f(n) using high-level behavioral algorithms.
* `comp_eq.sv`: Comparator logic block validating computational matching between structural and behavioral outputs.
* `simu.sv`: Complete system Testbench validating functional correctness via waveforms.
