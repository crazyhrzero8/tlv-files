\m5_TLV_version 1d: tl-x.org
\m5
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // gates_calc.tlv -Biplab Das S
   // =================================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   $out = ! $inl; //not
   $out1 = $in2 & $in3; //and
   $out2 = $in4 | $in5; //or
   $out3 = $in6 ^ $in7; //xor
   $out4 = ! $out1; //nand
   $out5 = ! $out2; //nor
   $out6 = ! $out3; //xnor
   //can use delays in between to test
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
