# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Server Connect
source ./.biz9_config.sh
echo "#################"
echo 'BiZ9 Server Connect'
echo "#################"
SSH_KEY_DIR=other/aws/ec2_key
ssh -i ssh -i ${SSH_KEY} admin@${SERVER_IP_ADDR}
echo "----------------------------------"
echo "Done!"
echo "----------------------------------"
exit 1
