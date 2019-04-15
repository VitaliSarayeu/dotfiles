#!/bin/bash

echo $(pwd)

echo $@

# urxvt -cd $(pwd) -e bash -i -c ""$@"; bash"
# urxvt -cd $(pwd) --hold -e "bash" -i -c "$(echo "$@")"

bash -c "$(echo " urxvt -cd $(pwd) --hold -e "bash" -i -c \"$(echo "$@")\"")"


