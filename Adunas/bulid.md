## 说明
必须用vs2017
用vs自带的编译器msbulid

### Python3找不到
解决办法：[参考](https://stackoverflow.com/q/76373894)
在[根目录CMakeLists.txt](/CMakeLists.txt)中添加代码
```js
// 第218行到第219行
SET(Python3_ROOT_DIR "E://01_Adunas//02_EnglishPath//03_software//07_program//03_python//02_python//02_FilePozition//02_R7000//Python39")
```


### 构建的配置文件
文件存储在[.vs文件夹](/.vs)和[根目录](/)下，可以手动编写，但是不建议，我们建议自动生成，再手动修改。
 1. [tasks](/.vs/tasks.vs.json)
    编译控制文件，在项目的CMakeLists.txt-鼠标右键-配置任务
 2. [launch.vs.json](/.vs/launch.vs.json)
    调试和运行控制文件，在项目的CMakeLists.txt-鼠标右键-调试和启动设置-xx.exe
    launch.vs.json 的配置方法：[P5 环境变量配置](https://www.bilibili.com/video/BV1us4y1J7HL/?p=5&share_source=copy_web&vd_source=6b55cb6788b1952e04c06b095d772810)
 3. [CMakeSettings.json](/CMakeSettings.json)
    cmake控制文件，控制构建项目的树结构、编译器等。在根目录下的CMakeLists.txt-鼠标右键-更改Cmake设置

### VCRUNTIME140_1D.DLL
报错：由于找不到VCRUNTIME140_1D.DLL,无法继续执行代码重新安装程序
原因：系统包含发布版vcruntime140_1.dll，缺少调试版vcruntime140_1d.dll文件，将[其](/Adunas/vcruntime140_1d.dll)保存在路径'c:\windows\system32\'下即可。
参考：[这个回答](https://stackoverflow.com/q/74110024/22348569)
还可以使用工具[Dependency Walker](http://www.dependencywalker.com/)查看依赖项，使用说明看[这个](http://t.csdn.cn/5OTyF)

### 无法查找或打开 PDB 文件
Cannot find or open the PDB file，.pdb 文件是在构建 DLL 库模块时生成的，用于调试目的。它们包含 DLL 内各种二进制元素的符号和偏移量。未加载的 pdb 是系统 dll，我认为您实际上不需要调试它们
参考这个[回答](https://stackoverflow.com/q/27192746/22348569)
