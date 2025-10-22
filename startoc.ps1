# 
# Start opencode in a windows terminal 
# 

$opencodePath = (get-command opencode).Path

$workingDir = get-location

Start-Process wt `
    ("-w -1 --pos 1,1 --size 100,50 -d `"$workingDir`" " + 
	"pwsh --NoExit -c `"pwsh -File `"$opencodePath`"`" ; " +
    "split-pane -H -d `"$workingDir`" -p `"PowerShell`" -s 0.3 ; " +
    "move-focus first")

