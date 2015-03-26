. wfgen/wflib.sh

cDir=$PWD
NodeName=node_mtmg

map_tm() {
   mkdir map_tm
   cd map_tm
   exec 2> err.txt
   echo "map_tm start "`date` > log.txt
   $cDir/jt_vto/runc.py --ifile list --ifield=votemper --ikey=list_month --oat --ofile=.out.nc --okey=outcome -s --bm #--iClean
   echo "map_tm end "`date` >> log.txt
   }

reduce_om() {
   mkdir reduce_om
   cd reduce_om
   exec 2> err.txt
   echo "reduce_om start "`date` > log.txt
   $cDir/jt_vto/runc.py --ifile list --ifield=votemper --ikey=outcome --oao --otc --ofile=out6.nc --okey=outcome --bm
   echo "reduce_om end "`date` >> log.txt
   }

reduce_ga() {
   mkdir reduce_ga
   cd reduce_ga
   exec 2> err.txt
   echo "reduce_ga start "`date` > log.txt
   $cDir/jt_vto/node_g.py outcome 4 list_year
   echo "reduce_ga end "`date` >> log.txt
   }



CloseOnQuit() {
   while true
   do
      if read line <$1 ; then
         if [[ "$line" == 'quit' ]]; then
            break
            fi
         echo $line
         fi
      done
   }



mkdir $NodeName
cd $NodeName
exec 2> err.txt

echo $NodeName" start "`date` > log.txt 

#pipe=localpipe
#mkfifo $pipe
#CloseOnQuit $pipe | reduce_ga &
#map_tm | passer $pipe | passer outcome.txt | reduce_om >> outcome.txt &
#echo quit >> $pipe    #does not work because when CloseOnQuit exit also reduce_ga is terminated
#http://www.linuxjournal.com/content/using-named-pipes-fifos-bash

map_tm | passer buffer.txt | reduce_om > outcome.txt
cat buffer.txt | passer outcome.txt | reduce_ga

echo $NodeName" end "`date` >> log.txt


