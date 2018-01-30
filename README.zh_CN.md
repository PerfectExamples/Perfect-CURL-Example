# Perfect CURL 请求示例 [English](README.md)

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="http://stackoverflow.com/questions/tagged/perfect" target="_blank">
        <img src="http://www.perfect.org/github/perfect_gh_button_2_SO.jpg" alt="Stack Overflow" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat" alt="Swift 4.0">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

Perfect通过CURL请求数据示例

该项目通过SPM软件包管理器编译，是[Perfect](https://github.com/PerfectlySoft/Perfect)项目之一</br>
请确保您已经安装了Xcode 9.2或更高版本。

## 准备工作 - 使用Xcode 9

* 导出或下载工程
* 在终端中，导航到目录并执行:

```
swift package generate-xcodeproj && open .
```

* 打开 Xcode 项目
* 选择可执行的目标并点击 "Run"

## 准备工作 - 使用终端

* 导出或下载工程;
* 在终端中，导航到工程目录 
* 执行 `swift run`

无论从Xcode或终端执行，你会看到一个和下面类似的结果:

```
Linking ./.build/x86_64-unknown-linux/debug/Perfect-CURL-Example
Test URL: https://helloacm.com
get 116864 bytes
====================================================================
Test URL: http://ip.jsontest.com/
get json: ["ip": "68.232.66.174"]
====================================================================
Using Swift 4.0 Decodable to test http://date.jsontest.com/:
Test URL: http://date.jsontest.com/
get json: JSONTestReturn(time: "07:27:54 PM", milliseconds_since_epoch: 1517340474145, date: "01-30-2018")
```

## 问题报告

目前我们已经把所有错误报告合并转移到了JIRA上，因此github原有的错误汇报功能不能用于本项目。

您的任何宝贵建意见或建议，或者发现我们的程序有问题，欢迎您在这里告诉我们。[http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1)。

目前问题清单请参考以下链接： [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)



## 更多内容
关于Perfect更多内容，请参考[perfect.org](http://perfect.org)官网。
