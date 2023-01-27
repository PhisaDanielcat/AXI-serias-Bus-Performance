create_clock -period 10.000 -name clock -waveform {0.000 5.000} [get_ports clk]


create_clock -period 10.000 -name clock -waveform {0.000 5.000} [get_ports s00_axi_aclk]

create_clock -period 10.000 -name clock -waveform {0.000 5.000} [get_ports m00_axi_aclk]
