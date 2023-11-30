#!/bin/bash -e

USER_ID=$(id -u)
GROUP_ID=$(id -g)

# グループを作成する
if [ x"$GROUP_ID" != x"0" ]; then
    groupadd -g $GROUP_ID $USER_NAME
fi
# ユーザを作成する
if [ x"$USER_ID" != x"0" ]; then
    useradd -d /home/$USER_NAME -m -s /bin/bash -u $USER_ID -g $GROUP_ID $USER_NAME
fi

mkdir -p /workspace/src
#mkdir -p /workspace/out /workspace/var /workspace/data
#touch /workspace/src/model.py /workspace/src/train.py /workspace/src/utils.py /workspace/src/dataset.py

# パーミッションを元に戻す
sudo chmod u-s /usr/sbin/useradd
sudo chmod u-s /usr/sbin/groupadd

exec $@
