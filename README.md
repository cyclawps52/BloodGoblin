# Project Blood Goblin

```
 ______          _____   _____  ______ 
 |_____] |      |     | |     | |     \
 |_____] |_____ |_____| |_____| |_____/
                                       
  ______  _____  ______         _____ __   _
 |  ____ |     | |_____] |        |   | \  |
 |_____| |_____| |_____] |_____ __|__ |  \_|

                  ,      ,
                 /(.-""-.)\
             |\  \/      \/  /|
             | \ / =.  .= \ / |
             \( \   o\/o   / )/
              \_, '-/  \-' ,_/
                /   \__/   \
                \ \__/\__/ /
              ___\ \|--|/ /___
            /`    \      /    `\
           /       '----'       \
          /  Made by Cyclawps52  \   
```

_Because red teamers are the biggest trolls in existence_

<hr>

## What is this?

This is a collection of Metasploit post modules designed for automating some Red Team troll tactics. It also serves as a hub for persistence scripts and recon tools.
(If you are interested in viewing the persistence/recon please contact me directly. I do not wish to give out various red team methods that might still be in use today.)

## How to install

1. Clone the repo (or download a specific release from the [releases page](https://github.com/cyclawps52/BloodGoblin/releases))
2. `cat Source/install.sh | bash`

The `rs` directory has been simlinked to `/bgrs` (Blood Goblin Resource Scripts) for easier access inside Metasploit.

NOTE: this repo is designed to be run with the `root` user on a standard Kali install. All files are copied accordingly.

## Currently included modules/resource scripts

| Module name | Target OS | Description | Link |
| - | - | - | - |
| aliasBomb | linux | Aliases all binaries in 3 directories to `vi` | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/modules/post/linux/manage/aliasBomb.rb) |
| dogeMOTD | linux | Replaces the MOTD with a lovely doggo | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/modules/post/linux/manage/dogeMOTD.rb) |
| RedMBR | linux (planned multi in future) | [This one deserves its own repo, check it out here](https://github.com/cyclawps52/RedMBR) | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/modules/post/linux/manage/RedMBR.rb) |
| Message Box | multi | Displays a `msg` box on windows to all users or outputs to `wall` on linux | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/modules/post/multi/manage/messageBox.rb) |
| Calc | windows | Spawns calc.exe on a windows desktop (requires migrated session) | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/modules/post/windows/manage/calc.rb) |
| Screen Resoultion | windows | Changes the windows screen resolution based on given parameters | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/modules/post/windows/manage/screenRes.rb) |
| Multi Post Runner | multi | Allows a post module to be ran against all active sessions that match the specified target parameter of the post module | [link](https://github.com/cyclawps52/BloodGoblin/blob/master/Source/rs/multiPost/multiPost.rc) |

## Hidden Modules

* persistence.rb (a simple linux persistence script with several various tactics)
* footholdLinux.rc (automated recon and initial exploitation vector for Linux)
* footholdWindows.rc (automated recon and initial exploitation vector for Windows)
* footholdMaster.rc (combines both of the previous footholds together, nothing additional added to it)
* handlerGen.rc (starts metasploit handlers and generates custom obfusicated payloads to a tmp directory)

Again, please feel free to contact me if you want further information about these modules.

**IF YOU ARE A DSU RED TEAMER AND WISH TO USE THE ACTUAL VERSION OF THIS, PLEASE MESSAGE ME ON SLACK!**

## How to use multiPost.rc:

```
    use post/path/to/module/etc
    set options
    resource /bgrs/multiPost/multiPost.rc
```


