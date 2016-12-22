# Perfect CURL 请求示例[English](README.md)

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
        <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
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

以上项目包通过Swift Package Manager来编译，并成为[Perfect](https://github.com/PerfectlySoft/Perfect)工程的一部分。</br>
请确保您已经安装了Xcode 8.0或以上版本。

## 准备工作 - 使用Xcode 8

* 导出或下载工程
* 在终端中，导航到目录并执行:

```
swift package generate-xcodeproj
```

* 打开 `Perfect-CURL.xcodeproj`
* 选择可执行的目标并点击 "Run"

## 准备工作 - 使用终端

* 导出或下载工程;
* 在终端中，导航到工程目录 
* 执行 `swift build`
* 项目编译成功后, 请执行 `./.build/debug/Perfect-CURL`命令

无论从Xcode或终端执行，你会看到一个和下面类似的结果:

```
Test URL: https://helloacm.com
Header:
HTTP/1.1 200 OK
Date: Mon, 03 Oct 2016 14:40:58 GMT
Content-Type: text/html; charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
Set-Cookie: __cfduid=df6f30d252ed62e98b354394a0e0df2551475505658; expires=Tue, 03-Oct-17 14:40:58 GMT; path=/; domain=.helloacm.com; HttpOnly
Strict-Transport-Security: max-age=15552000; includeSubDomains; preload
Vary: Accept-Encoding,User-Agent
Last-Modified: Mon, 03 Oct 2016 09:37:01 GMT
Cache-Control: public, max-age=86400
Expires: Tue, 04 Oct 2016 14:40:58 GMT
CF-Cache-Status: HIT
X-Content-Type-Options: nosniff
Server: cloudflare-nginx
CF-RAY: 2ec126fb5b073030-YYZ


====================================================================
Test URL: http://ip.jsontest.com/
Header:
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Content-Type: application/json; charset=ISO-8859-1
X-Cloud-Trace-Context: f3a85f599c865efd42dc9a427fcf55dc
Date: Mon, 03 Oct 2016 14:40:58 GMT
Server: Google Frontend
Content-Length: 24


Body:
Optional(["ip": "127.0.0.1"])


====================================================================
Body of http://date.jsontest.com/:
Optional(["time": "02:40:58 PM", 
"date": "10-03-2016", 
"milliseconds_since_epoch": 1475505658330])

Program ended with exit code: 0
```

## 问题

我们正在使用JIRA来收集所有错误和支持相关的问题，因此，GitHub的问题已被禁用。</br>

如果您发现了错误，bug，或者任何建议，您可以移步[http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1) 并提交它。

在[http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues) 可以找到一个全面的开放问题列表。


## 更多信息
欲了解更多关于Perfect项目的信息，请访问 [perfect.org](http://perfect.org).
