# Windows Docker for Netling

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-1EAEDB)]()
[![saythanks](https://img.shields.io/badge/say-thanks-1EAEDB.svg)](https://saythanks.io/to/catch.nkn%40gmail.com)
[![](https://img.shields.io/badge/license-MIT-0a0a0a.svg?style=flat&colorA=1EAEDB)](https://qainsights.com)
[![](https://img.shields.io/badge/%E2%9D%A4-QAInsights-0a0a0a.svg?style=flat&colorA=1EAEDB)](https://qainsights.com)
[![](https://img.shields.io/badge/%E2%9D%A4-YouTube%20Channel-0a0a0a.svg?style=flat&colorA=1EAEDB)](https://www.youtube.com/user/QAInsights?sub_confirmation=1)
[![](https://img.shields.io/badge/donate-paypal-1EAEDB)](https://www.paypal.com/paypalme/NAVEENKUMARN)

![Netling](./assets/Netling.png)

# 🙋‍♂️ What is Netling?

> Netling is a load tester client for easy web testing. It is extremely fast while using little CPU or memory. It is an open source project. Developed by [Tore Lervik](https://github.com/hallatore/Netling).

[Download Netling](https://github.com/hallatore/Netling)

For more details, please refer to my [blog article](https://qain.si/netling).

# 🗜 How to use this Windows Docker for Netling?

You can build the image your own or you can pull it from [Docker Hub](https://hub.docker.com/r/qainsights/netling) using `docker pull qainsights/netling`.

To build your own image, clone this repository, change the directory to `Netling-Docker` and issue the below command.

```
docker build -t <image_name> .
```
E.g. `docker build -t netling .`

# ▶ How to run a Windows container?

To run Netling for `https://example.com` using `1` thread and `10 seconds` duration, issue the below command.

```
docker run netling https://example.com -t 1 -d 10
```

Output
```
********************************************************************
Execution has been started in CLI mode for the following args: https://example.com -t 1 -d 10

Running 10s test with 1 threads @ https://example.com/

226 requests in 10.02s
    Requests/sec:   23
    Bandwidth:      0 mbit
    Errors:         0
Latency
    Median:         33.603 ms
    StdDev:         31.821 ms
    Min:            20.958 ms
    Max:            272.510 ms

 ██
 ██
 ████
 █████
 ██████
 ███████
███████████████████   █  █   █                █     █                █         █
20.958 ms =========================================================== 272.510 ms

Execution has been completed. Output has been stored at .\Netling-Output.txt
********************************************************************
```

# ⛰ How to mount the volume to the container?

To download the output of Netling, you can mount the volume using the below command. After the execution, you can view the output in your host.

```
 docker run -v C:\Tools\Netling.ConsoleClient.netcore2.1.Win10-x64:C:\Netling.ConsoleClient.netcore2.1.Win10-x64  qainsights/netling https://example.com -t 1 -d 10
```

# 💲 Donate
☕ <a target="_blank" href="https://www.buymeacoffee.com/qainsights">Buy me a tea</a>
