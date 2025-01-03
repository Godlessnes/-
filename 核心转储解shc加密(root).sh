#!/bin/sh
#!/system/bin/sh
##################################################################
#
#  脚本适用于已root的安卓设备
#
#  核心转储文件是内含进程终止时内存映像的一个文件，利用这一特性来获取shc加密的shell源码。
#  相关资料可以参考：https://blog.csdn.net/hu_jiacheng/article/details/40950471
#
#  使用方法: 
#  将脚本和需要解密的文件放在同一目录中，root执行本脚本即可。
#
#  Petit-Abba  2021/09/21
#
##################################################################

# 开启core文件生成限制: 最大10M
ulimit -c 102400
# 获取core_pattern默认值
core_pattern_default_value="$(cat /proc/sys/kernel/core_pattern)"
# 更改core_pattern默认值
echo "/data/core_dump/core.%e.%p" > /proc/sys/kernel/core_pattern

# 临时目录
[ ! -d "/data/core_dump" ] && mkdir -p /data/core_dump
[ ! -d "/data/core_dump_tmp" ] && mkdir -p /data/core_dump_tmp
[ ! -d "${0%/*}/解密文件" ] && mkdir -p ${0%/*}/解密文件

# 排除文件本身
no_file="$(echo ${0%*/} | awk -F '/' '{print $NF}')"
no_file2="${no_file}.bak"

for ijij in $(ls -l ${0%/*} | grep ^- | awk '{print $8}')
do
  [ "${ijij}" == "${no_file}" ] && continue
  [ "${ijij}" == "${no_file2}" ] && continue
  rm -rf /data/core_dump_tmp/*
  cp "${0%/*}/${ijij}" /data/core_dump_tmp
  chmod 0777 /data/core_dump_tmp/${ijij}
  rm -rf /data/core_dump/*
  /data/core_dump_tmp/${ijij} & ( sleep 0.02 && kill -SIGSEGV $! )
  sleep 1
  core_sh="$(ls /data/core_dump)"
  cat /data/core_dump/${core_sh} | awk -F 'aarch64' '{print $1}' > ${0%/*}/解密文件/${ijij}.md
done

# 恢复core_pattern默认值
echo "${core_pattern_default_value}" > /proc/sys/kernel/core_pattern
# 删除目录
rm -rf /data/core_dump*
# 关闭core文件的生成
ulimit -c 0
