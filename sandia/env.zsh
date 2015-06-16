# Turn on proxy if .proxy_on file exists

proxy_file="$HOME/.proxy"

if [ -e "$HOME/.proxy_on" ]
then
  use_proxy=true
else
  use_proxy=false
fi

if [ -e $proxy_file ] ; then
  # Read proxy
  PROXY=$(<$proxy_file)
else
  PROXY=false
  echo "Please set the proxy in .proxy"
fi


# Make this a funciton
if $use_proxy ; then
  echo "Exporting enviroment variables for proxy: $PROXY."
  export http_proxy="$PROXY"
  export HTTP_PROXY="$PROXY"
  export https_proxy="$PROXY"
  export HTTPS_PROXY="$PROXY"
else
  echo "Setting proxy enviroment to none."
  export http_proxy=""
  export HTTP_PROXY=""
  export https_proxy=""
  export HTTPS_PROXY=""
fi
