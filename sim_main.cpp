#include "Vtop.h"
#include "verilated.h"
#include <iostream>

int main(int argc, char **argv, char **env)
{
    Vtop top;
    CData prev_led = 0;

    top.clk = 0;
    while (!Verilated::gotFinish()) {
        top.clk = !top.clk;
        top.eval();
        if (prev_led != top.led) {
            std::cout << "LEDs: ";
            for (int i = 0; i < 6; ++i) {
                std::cout << ((top.led >> (5 - i)) & 1);
            }
            std::cout << std::endl;
            prev_led = top.led;
        }
    }
    return 0;
}
