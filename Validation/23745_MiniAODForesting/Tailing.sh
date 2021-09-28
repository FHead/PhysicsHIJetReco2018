for i in `condor_q -nobatch | grep chenyi | awk '{print $1}' | grep ^[0-9]`
do
   echo $i
   condor_tail -stderr $i | tail -n5
done

