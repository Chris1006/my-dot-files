#!/bin/bash
# The line below extracts the events in each line and add quotes to them so for loop will loop through each of them
items=`khal list today|tail -n +2`   #no longer needed|awk -F"\n" '{printf("\"%s\"\n"),$1}'`
echo  "$items"|while read -r rem # I pipe the list because otherwise the loop will treat blank space as delimiter
do
    rm_time=$(($(date +%s --date "`echo $rem | sed -n 's/^\([0-9][0-9]:[0-9][0-9]\)-.*/\1:00/p'`") - 600)) # this command extracts the starting time of the event, and convert it to EPOCH, and subtract 10 minutes from it.
    rm_time=`date +%H:%M --date @$rm_time` # This converts EPOCH back to human readble form
    rem_name=`echo $rem | sed -n 's/.*:[0-9][0-9] \(.*\)/\1/p'`  
    echo $rem_name $rem_time
    echo "notify-send 'Calendar Reminder: $rem_name'" | at $rm_time
done
exit
