## vim 配置
### 安装 vim
```
brew install vim
```

### vim 配置

    .vimrc 配置文件。
### vim 插件
- 安装插件
```
安装插件，先找到其在 github.com 的地址，再将配置信息其加入 .vimrc 中的call vundle#begin() 和 call vundle#end() 之间，最后进入 vim 执行：

: PluginInstall
```
- 删除插件
```
如需删除插件，只需将 Plugin '插件地址' 删除或者注释掉，再进入 vim 执行：

:PluginClean
```

- 升级插件
```
如需升级插件，进入 vim 执行：

:PluginUpdate
```

