require 'msf/core'
require 'rex'
require 'msf/core/post/common'
 
class MetasploitModule < Msf::Post
 
 include Msf::Post::Common

 def initialize(info={})
     super( update_info( info,
         'Name' => 'Screen Resolution Changer (Blood Goblin)',
         'Description' => %q{
             Changes the windows screen resolution to the given values.
         },
         'License' => MSF_LICENSE,
         'Author' => [
             'Tristan Fletcher #Cyclawps52',
         ],
         'Platform' => ['win'],
         'SessionTypes' => [ 'meterpreter', 'shell' ]
     ))
     register_options(
     [
        OptInt.new('Width', [true, 'Screen width', '800' ]),
        OptInt.new('Height', [true, 'Screen height', '600' ]),
     ], self.class)
   
 end
 
 # Main method
 def run
    # get vars
    sWid = datastore['Width']
    sHei = datastore['Height']

    commandToRun = "Set-DisplayResolution -Width " + sWid.to_s + "-Height" + sHei.to_s + "-Force"
    cmd_exec(commandToRun)
    print_status("Resolution changed!")

 end
 
end