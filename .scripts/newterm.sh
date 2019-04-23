#!/bin/bash

#echo $(pwd)

#echo $@

# urxvt -cd $(pwd) -e bash -i -c ""$@"; bash"
# urxvt -cd $(pwd) --hold -e "bash" -i -c "$(echo "$@")"

nohup bash -c "$(echo " urxvt -cd $(pwd) --hold -e "bash" -i -c \"$(echo "$@")\"")" </dev/null >/dev/null 2>&1 &

