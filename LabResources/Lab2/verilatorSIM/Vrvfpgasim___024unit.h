// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vrvfpgasim.h for the primary calling header

#ifndef _VRVFPGASIM___024UNIT_H_
#define _VRVFPGASIM___024UNIT_H_  // guard

#include "verilated_heavy.h"
#include "Vrvfpgasim__Dpi.h"

//==========

class Vrvfpgasim__Syms;
class Vrvfpgasim_VerilatedVcd;


//----------

VL_MODULE(Vrvfpgasim___024unit) {
  public:
    
    // INTERNAL VARIABLES
  private:
    Vrvfpgasim__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vrvfpgasim___024unit);  ///< Copying not allowed
  public:
    Vrvfpgasim___024unit(const char* name = "TOP");
    ~Vrvfpgasim___024unit();
    
    // INTERNAL METHODS
    void __Vconfigure(Vrvfpgasim__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
