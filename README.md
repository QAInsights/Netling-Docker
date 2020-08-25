# Windows Docker for Netling

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-1EAEDB)]()
[![saythanks](https://img.shields.io/badge/say-thanks-1EAEDB.svg)](https://saythanks.io/to/catch.nkn%40gmail.com)
[![](https://img.shields.io/badge/license-MIT-0a0a0a.svg?style=flat&colorA=1EAEDB)](https://qainsights.com)
[![](https://img.shields.io/badge/%E2%9D%A4-QAInsights-0a0a0a.svg?style=flat&colorA=1EAEDB)](https://qainsights.com)
[![](https://img.shields.io/badge/%E2%9D%A4-YouTube%20Channel-0a0a0a.svg?style=flat&colorA=1EAEDB)](https://www.youtube.com/user/QAInsights?sub_confirmation=1)
[![](https://img.shields.io/badge/donate-paypal-1EAEDB)](https://www.paypal.com/paypalme/NAVEENKUMARN)

# What is Netling?

> Netling is a load tester client for easy web testing. It is extremely fast while using little CPU or memory. It is an open source project. Developed by [Tore Lervik](https://github.com/hallatore/Netling).

[Download Netling](https://github.com/hallatore/Netling)

# How to use this Windows Docker for Netling?

You can build the image your own or you can pull it from Docker Hub using `docker pull qainsights/netling`.

To build your own image, clone this repository, change the directory to `Netling-Docker` and issue the below command.

```
docker build -t <image_name> .
```
E.g. `docker build -t netling .`

# How to run a Windows container?

To run Netling for `https://example.com` using `1` thread and `10 seconds` duration, issue the below command.

```
docker run netling https://example.com -t 1 -d 10
```

Output
```

```

# How to mound the volume to the container?

To download the output of Netling, you can mount the volume using the below command.

```

```

# 💲 Donate
☕ <a target="_blank" href="https://www.buymeacoffee.com/qainsights">Buy me a tea</a>
