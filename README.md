# mvnsettingenv

Mavenで使われる ~/.m2/settings.xml をコマンドで簡単に切り替えたかった



以下のように用意しておく

* ~/.m2/settings.xml.aaa
* ~/.m2/settings.xml.bbb



コマンド

`mvnsettings ls` : 一覧を表示

`mvnsettings version` : 現在のバージョンを表示

`mvnsettings global xxx` : バージョンをxxxに変更

