#!/usr/bin/env bash

echo ">>>"
echo ">>> Setup fish"
echo ">>>"

echo "
### amoreira/dotfiles

function driver-debug
  export VTEX_ACCOUNT=$argv[1]
  export VTEX_WORKSPACE=$argv[2]
  export VTEX_RABBIT_MQ_HOST_VBASE='amqp://render:render2016@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/vbase.1'
  export VTEX_RABBIT_MQ_HOST_COURIER='amqp://courier:vtexcourier@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/courier'
  export VTEX_RABBIT_MQ_HOST_SPPA='amqp://render:render2016@ramq-api-env-stable.us-east-1.elasticbeanstalk.com:5672/sppa.0'
  export VTEX_RABBIT_MQ_HOST_APPS_ENGINE='amqp://courier:vtexcourier@rabbit.aws-us-east-1.vtex.io:5672/apps-engine'
end


### amoreira/dotfiles
" >> ~/config.fish


echo ">>>"
echo ">>> Installing fisherman"
echo ">>>"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo ">>>"
echo ">>> Installing vtex-fish"
echo ">>>"
fisher vtex/vtex-fish

sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

echo ">>>"
echo ">>> Configured fish as default terminal."
echo ">>>"
