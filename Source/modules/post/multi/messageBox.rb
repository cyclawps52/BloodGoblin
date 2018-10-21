require 'msf/core'
require 'rex'
require 'msf/core/post/common'
 
class MetasploitModule < Msf::Post
 
 include Msf::Post::Common

 def initialize(info={})
     super( update_info( info,
         'Name' => 'Message Box (Blood Goblin)',
         'Description' => %q{
             Spawns a message box using msg on windows or broadcasts using wall on linux.
         },
         'License' => MSF_LICENSE,
         'Author' => [
             'Tristan Fletcher #Cyclawps52',
         ],
         'Platform' => [ 'unix', 'linux', 'win' ],
         'SessionTypes' => [ 'meterpreter', 'shell' ]
     ))
     register_options(
     [
        OptString.new('Message', [true, 'The message to broadcast', 'Look behind you' ]),
     ], self.class)
 end
 
 # Main method
 def run

    # get OS from metasploit
    case session.platform
    when 'windows'
        whichOS = 1
    when 'unix'
        whichOS = 0
    when 'linux'
        whichOS = 0
    end

    # get variable options
    messageText = datastore['Message']
    
    if whichOS == 1
        # windows
        commandToRun = "msg * " + "\"" + messageText + "\""
        cmd_exec(commandToRun)
        print_status("Message box spawned for all logged in users.")
    else
        # linux
        commandToRun = "echo -n \"" + messageText + "\" | wall" 
        cmd_exec(commandToRun)
        print_status("Message outputted to all logged in users.")
    end

 end
 
end