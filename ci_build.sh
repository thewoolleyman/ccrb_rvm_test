rvm_interpreter=$1
export rvm_install_on_use_flag=1
export rvm_gemset_create_on_use_flag=1
echo "------------- running: rvm use $rvm_interpreter"
rvm use $rvm_interpreter
echo "------------- running: env"
env
echo "------------- running: rvm info"
rvm info
echo "------------- running: . \"$HOME/.rvm/environments/$rvm_interpreter\""
. "$HOME/.rvm/environments/$rvm_interpreter"
echo "------------- running: env"
env
echo "------------- running: rvm info"
rvm info
echo "------------- running: ruby -v"
ruby -v
