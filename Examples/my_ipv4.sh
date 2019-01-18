ifconfig en0 | egrep 'inet ' | cut -d" " -f2

# ifconfig en0 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p'
