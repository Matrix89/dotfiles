#!/bin/sh
#TODO buttonz!
workspaceInfo(){
		  for i in {2..5}; do
					 SPACE=$(bspc wm --get-status | cut -d ':' -f $i | cut -b 1)
					 if [[ "$SPACE" == *u* ]]
					 then
								echo -ne " %{A:bspc desktop -f $i:}\uF192%{A} "
					 elif [[ "$SPACE" == *O* ]] || [[ "$SPACE" == *F* ]]
					 then
								echo -ne " %{A:bspc desktop -f $i:}\uF111%{A} "
					 elif [[ "$SPACE" == *o* ]]
					 then
								echo -ne " %{A:bspc desktop -f $i:}\uF192%{A} "
					 else
								echo -ne " %{A:bspc desktop -f $i:}\uF1DB%{A} "
					 fi							  
		  done
}
while true; do
		  #BAR="%{r} $(cat /proc/loadavg | cut -d ' ' -f 1)"
				BAR=""
		  BAR="$BAR %{r} $(date +%H:%M:%S)"
		  BAR="$BAR %{c} $(xtitle -t 50)"
		  BAR="$BAR %{l} $(workspaceInfo)"
		  echo -e $BAR 
		  sleep 0.01
done
