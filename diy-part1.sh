#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
rm -rf package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config
