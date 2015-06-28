# 基于Docker的Composer

运行以下指令，你就可以在没有安装PHP的环境里面执行composer：

```alias composer="docker run -i -t -v \$PWD:/srv ubermuda/composer"```
