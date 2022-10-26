## --- 2022年10月26日（稳定可用） ---
#### V2.20版本，此次版本工具在手机上使用（Android、IOS双端通用），IOS请点击下载桌面版
#### 刷通关次数（排行榜）、通关话题PK、解锁全部皮肤，全新实现方式
#### 为防止被游戏官方快速修复，本次通关工具不在Github上直接下载，使用隐蔽下载方式
#### 通关工具获取方式：
##### 一、[手机点击下载APP](https://www.tsyule.cn/index.php/index/index/appid/7/tgid/cf0013800)，没有电脑版，用手机点进去下载
##### 二、使用手机号注册此APP账号，回到APP首页
##### 三、APP首页顶部图标中看到“羊”字图标后点击直接开始下载
##### （为防止被游戏官方快速修复，未登录情况下APP首页无法看到“羊”字图标入口）
#### 交流QQ群：568705243
#### 避免暴露工具细节，github禁止Issue，有问题在QQ群找管理提出
---
## --- 2022年10月8日（失效） ---
#### V2.10版本，用法与V2.20版本一致，修复被官方和谐后无法完整计算通关路径的问题
---
## --- 2022年9月30日（失效） ---
#### V2.0版本，用法与V2.10版本一致，修复若干个BUG
---
## --- 2022年09月24日（失效） ---
#### V1.0版本，在电脑上使用（由于游戏版本更新，此方式已失效）
#### 第一步，打开PC微信，打开羊了个羊小游戏，打开自动获取Token工具，按回车键获取Token
#### 第二步，打开自动通关助手，把刚才复制的Token粘贴进去，输入通关次数后按回车键开始自动通关
#### 由于游戏版本更新，自动获取Token、自动通关助手已失效
---
## --- 2022年09月12日（失效） ---
#### 通过修改运行时文件，实现无限道具模式（由于游戏版本更新，此方式已失效）
#### 第一步，在PC微信上打开羊了个羊小游戏，然后退出微信
#### 第二步，找到磁盘目录C:\Users\你的用户名\Documents\WeChat Files\Applet\wx141bfb9b73c970a9\32
#### 第三步，替换文件【__WITHOUT_MULTI_PLUGINCODE__.wxapkg】
#### 第四步，再重新打开微信，登录微信，打开小程序，开始游戏，即可无限道具
---
## --- 2022年09月07日（失效） ---
#### API 接口一键通关方式（由于游戏版本更新，此方式已失效）
#### 使用 Windows 10 的 PowerShell 带上用户TOKEN直接发起通关请求
#### 其实 PC 版微信 v3.2.1 连抓包都不需要，Applet\wx141bfb9b73c970a9\.S0 文件里就有明文的 token 值，已通关的日期和获得的皮肤也记录在这个文件里，但这个文件里的 prop_remove、prop_cancel、prop_random 的值是动态更新的，无法修改。PC 版本微信 v3.7.6 使用 usrkvstorage0.db 键值文件保存配置，非明文
#### 操作步骤一：在电脑或者手机里先打开抓包工具，玩《羊了个羊》第 1 关
#### 操作步骤二 ：查看抓包工具记录里域名 cat-match.easygame2021.com 请求体中的 t 值和 User-Agent 值（脚本里默认是 iPhone 15.7）
#### 操作步骤三：修改脚本里的 $header_t 和 $header_user_agent 参数
#### 操作步骤四：打开 Windows PowerShell ISE，输入 Set-Executionpolicy RemoteSigned 允许后再运行通关脚本
---
## 一些想说的话
#### 本项目旨在为你快速通关羊了个羊，上手需要一定动手能力以及门槛，请勿使用本程序恶意对游戏服务器持续造成压力，一切后果自负！！！t 参数包含个人信息，任何情况请勿泄漏
#### 项目仍在，欢迎PR，并未跑路，请切换 main 分支查看，懂的都懂，点击右上角 Star 关注更新不迷路
#### 本项目初衷是针对算法变态的官方介绍宣传只有 0.1% 的通关率羊了个羊给出快速通关方案，交流获取通关经验技巧，而不是用来暴力刷次数，便捷提供多线程批量提交数据恶意对游戏接口造成压力甚至导致不可用状态，也并非恶意篡改计算机数据，所有接口均来自官方；
