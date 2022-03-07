# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "BD_bidirec_18_0_synth_1" START { ROLLUP_AUTO }
set_msg_config -id {HDL-1065} -limit 10000
set_param project.vivado.isBlockSynthRun true
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs {
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include}
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include}
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include}
} [current_fileset]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog {
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh}
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh}
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh}
  {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh}
}
set_property file_type "Verilog Header" [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh}}]
set_property is_global_include true [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh}}]
set_property file_type "Verilog Header" [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh}}]
set_property is_global_include true [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh}}]
set_property file_type "Verilog Header" [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh}}]
set_property is_global_include true [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh}}]
set_property file_type "Verilog Header" [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh}}]
set_property is_global_include true [get_files {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh}}]
read_mem {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/sw/boot_main.mem}}
read_verilog -library xil_defaultlib {{C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/bidir.v}}
read_ip -quiet {{c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0.xci}}

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
OPTRACE "Configure IP Cache" START { }

set cached_ip [config_ip_cache -export -no_bom  -dir {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1} -new_name BD_bidirec_18_0 -ip [get_ips BD_bidirec_18_0]]

OPTRACE "Configure IP Cache" END { }
if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top BD_bidirec_18_0 -part xc7a100tcsg324-1 -mode out_of_context
OPTRACE "synth_design" END { }
OPTRACE "Write IP Cache" START { }

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix BD_bidirec_18_0_ BD_bidirec_18_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_18_0_stub.v
 lappend ipCachedFiles BD_bidirec_18_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_18_0_stub.vhdl
 lappend ipCachedFiles BD_bidirec_18_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_18_0_sim_netlist.v
 lappend ipCachedFiles BD_bidirec_18_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_18_0_sim_netlist.vhdl
 lappend ipCachedFiles BD_bidirec_18_0_sim_netlist.vhdl
 set TIME_taken [expr [clock seconds] - $TIME_start]

 if { [get_msg_config -count -severity {CRITICAL WARNING}] == 0 } {
  config_ip_cache -add -dcp BD_bidirec_18_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips BD_bidirec_18_0]
 }
OPTRACE "Write IP Cache" END { }
}
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}

rename_ref -prefix_all BD_bidirec_18_0_

OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef BD_bidirec_18_0.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "BD_bidirec_18_0_synth_1_synth_report_utilization_0" "report_utilization -file BD_bidirec_18_0_utilization_synth.rpt -pb BD_bidirec_18_0_utilization_synth.pb"
OPTRACE "synth reports" END { }

if { [catch {
  file copy -force {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0.dcp} {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0.dcp} {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0_stub.v} {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0_stub.vhdl} {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0_sim_netlist.v} {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.runs/BD_bidirec_18_0_synth_1/BD_bidirec_18_0_sim_netlist.vhdl} {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.ip_user_files/ip/BD_bidirec_18_0}]} {
  catch { 
    file copy -force {{c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_stub.v}} {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.ip_user_files/ip/BD_bidirec_18_0}
  }
}

if {[file isdir {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.ip_user_files/ip/BD_bidirec_18_0}]} {
  catch { 
    file copy -force {{c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_18_0/BD_bidirec_18_0_stub.vhdl}} {C:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.ip_user_files/ip/BD_bidirec_18_0}
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "BD_bidirec_18_0_synth_1" END { }
