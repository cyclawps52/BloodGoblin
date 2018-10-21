require 'msf/core'
require 'rex'
require 'msf/core/post/common'
 
class MetasploitModule < Msf::Post
 
 include Msf::Post::Common

 def initialize(info={})
     super( update_info( info,
         'Name' => 'Calculator (Blood Goblin)',
         'Description' => %q{
             Spawns a calc.exe on windows.
         },
         'License' => MSF_LICENSE,
         'Author' => [
             'Tristan Fletcher #Cyclawps52',
         ],
         'Platform' => ['win'],
         'SessionTypes' => [ 'meterpreter', 'shell' ]
     ))
   
 end
 
 # Main method
 def run

    print_line("Make sure to migrate your shell before running this module!")
    commandToRun = "calc.exe"
    cmd_exec(commandToRun)
    print_status("Calculator spawned!")

 end
 
end