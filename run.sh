sudo apt-get install python-setuptools aptitude git python-dev libxml2-dev libxslt-dev

sudo easy_install pip

cd ~
mkdir -p setup
cd setup
git clone https://github.com/trmjoa/provisioning-local.git
cd provisioning-local

sudo pip install -r requirements.txt

echo -e "please make sure to edit the config.json file followed by [ENTER]" && read USELESS_VAR

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules --extra-vars "@config.json"

source ~/.bashrc
exit 0
