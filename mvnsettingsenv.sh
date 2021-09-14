#!/bin/bash

M2DIR=~/.m2

# ./mvnsettingsenv.sh ls
# ./mvnsettingsenv.sh version
if [ $# -eq 1 ]; then
    if [ $1 = "ls" ]; then
        # $M2DIR以下のsetting.xml.xxxを探し、xxxを出力
        ls -1 $M2DIR/ | awk -F'.' 'NF==3 && $1=="settings" && $2=="xml" {print $NF}'
    fi
    if [ $1 = "version" ]; then
        cat $M2DIR/current_settings
    fi
fi

# ./mvnsettingsenv.sh global xxx
if [ $# -eq 2 ]; then
    if [ $1 = "global" -a -f $M2DIR/settings.xml.$2 ]; then
        echo $2
        # update settings.xml
        rm $M2DIR/settings.xml
        cp $M2DIR/settings.xml.$2 $M2DIR/settings.xml
        # update currnet info
        rm $M2DIR/current_settings
        echo $2 > $M2DIR/current_settings
    fi
fi
