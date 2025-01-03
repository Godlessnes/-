#!/bin/sh
#!/system/bin/sh
# 在这里添加你希望在下载完成并验证通过后执行的其他命令或脚本

echo -e "\033[2J\033[H"
color_code=$((1 + RANDOM % 7))
case $color_code in
    1) color="\033[31m";;     # 红色
    2) color="\033[32m";;     # 绿色
     3) color="\033[33m";;     # 黄色
     4) color="\033[34m";;     # 蓝色
     5) color="\033[35m";;     # 紫色
     6) color="\033[36m";;     # 青色
     7) color="\033[37m";;     # 白色
esac
echo -e "${color}"
echo -e '

    此事古难全，但愿人长久，千里共婵娟。

      By：玉龙   技术支持：CN_obi


'
color_reset="\e[0m"
color_red="\e[41m"
color_yellow="\e[43m"
color_green="\e[42m"
color_blue="\e[44m"
color_cyan="\e[46m"

# 定义颜色数组
colors=($color_red $color_yellow $color_green $color_blue $color_cyan)

# 设置进度条的宽度和颜色数
progress_width=40
num_colors=${#colors[@]}

# 定义函数，用于打印彩色进度条
print_progress() {
    local percentage=$1
    local completed=$((percentage * progress_width / 100))
    local remaining=$((progress_width - completed))

    # 计算当前颜色
    local color_index=$((percentage * num_colors / 100))
    local current_color="${colors[$color_index]}"

    # 打印进度条
    printf "\r${current_color}%*s${color_reset}%*s %d%%" $completed '' $remaining '' "$percentage"

    # 刷新输出缓冲区
    if [ $percentage -eq 100 ]; then
        echo ""
    fi
}

# 定义函数，用于更新进度并递归调用自身
update_progress() {
    local percentage=$1

    if [ $percentage -le 100 ]; then
        print_progress $percentage
         ##  sleep 0.1

        # 增加进度百分比，递归调用自身
        update_progress $((percentage + 1))
    fi
}

folder_name="lsml"
directory_path="/data/local/"
# 创建文件夹
mkdir -p "$directory_path/$folder_name"
# 检查是否成功创建文件夹
if [ $? -eq 0 ]; then
   sleep 0.01
else
    echo "初始化失败"
    exit
fi

update_progress 0
echo "\n                  初始化成功"
sleep 0.3
echo -e "${color}\n\n"

echo -e "\033[2J\033[H"
  ##   ## --------------------------------------------------------
  color_code=$((2 + RANDOM % 1))
  case $color_code in
    1) color="\033[31m";;     # 红色
    2) color="\033[32m";;     # 绿色
     3) color="\033[33m";;     # 黄色
     4) color="\033[34m";;     # 蓝色
     5) color="\033[35m";;     # 紫色
     6) color="\033[36m";;     # 青色
     7) color="\033[37m";;     # 白色
esac
echo -e "${color}"
  gzexe="/data/local/lsml/xs" 
if [ -e "$gzexe" ]; then
sleep 0.01
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/xs"
  output_file="/data/local/lsml/xs"  
  curl -s -o $output_file $url
fi
bzip="/data/local/lsml/xxs"
if [ -e "$bzip" ]; then
    sleep 0.01
else
    url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/xxs"
    output_file="/data/local/lsml/xxs"
    curl -s -o $output_file $url
fi
  upx="/data/local/lsml/xxxsss" 
if [ -e "$upx" ]; then
sleep 0.01
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/xxxsss"
  output_file="/data/local/lsml/xxxsss"  
  curl -s -o $output_file $url
fi

shc="/data/local/lsml/c" 
if [ -e "$shc" ]; then
sleep 0.01
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/c"
  output_file="/data/local/lsml/c"  
  curl -s -o $output_file $url
fi



  ku="/data/data/com.termux" 
if [ -e "$ku" ]; then
sleep 0.01
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/ku.zip"
  output_file="/data/local/lsml/ku"  
  curl -s -o $output_file $url
  unzip -q /data/local/lsml/ku -d /data/data/com.termux 
  rm /data/local/lsml/ku
  echo "检测到第一次使用，安装完成请重新打开"
  exit
fi

echo -e "建议把解密工具和解密文件放在同目录！"

  echo "\n【J】解密模式       【G】 加密模式\n
→ J1：gzexe变种     → G1：upx加密      
→ J2：gzexe混合     → G2：gzexe加密  
→ J3：定量包解密    → G3：bzip加密
→ J4：定量包配对    → G4：shell转C【自行编译】
→ J5：分段base64   
→ J6：upx解密    
→ J7：bzip解密                 
  "
  echo "请输入选项"
  
  
  ## -------------------------------------------------------
read choice
if [ $choice == "J1" ]; then                ##  //选项一

input_111=0
progress=$((input_111 * 100 / 300))
color_reset="\e[0m"
color_red="\e[41m"
color_yellow="\e[43m"
color_green="\e[42m"
color_blue="\e[44m"
color_cyan="\e[46m"
colors=($color_red $color_yellow $color_green $color_blue $color_cyan)
progress_width=40
num_colors=${#colors[@]}
print_progress() {
    local percentage=$1
    local completed=$((percentage * progress_width / 100))
    local remaining=$((progress_width - completed))

    if [ $percentage -ne 0 ] && [ $percentage -ne 100 ]; then
        local color_index=$((percentage * num_colors / 100))
        local current_color="${colors[$color_index]}"

        printf "\r${current_color}%*s${color_reset}%*s %d%%" $completed '' $remaining '' "$percentage"
    fi

    if [ $percentage -eq 100 ]; then
        echo ""
    fi
}
update_progress() {
    local percentage=$1
    if [ $percentage -le 100 ]; then
        print_progress $percentage
    fi
}
echo "你选择了gzexe变种"
echo "请输入文件路径:"
read input_directory
if [ ! -f "$input_directory" ]; then
    echo "错误！没找到文件"
    exit 1
fi
input_file=$(basename "$input_directory")
dir_size=0
update_progress $progress ＆
while [ $dir_size -eq 0 ]; do
    tail -n +$input_111 "$input_directory" 2>/dev/null | gzip -cd 2>/dev/null >"⭐️J1$input_file"
    input_666="⭐️J1$input_file"
    dir_size=$(du -s "$input_666" | cut -f1)

    if [ $dir_size -eq 0 ]; then
        rm -r "$input_666"
        if [ $input_111 -gt 300 ]; then
            echo "扫描完成未能找到解密部分！"
            exit 1
        else
        
            ((input_111++))
            progress=$((input_111 * 100 / 300))
            update_progress $progress
        fi
    else
        echo "解密完成已保存当前目录：⭐️J1$input_file"
        exit 1
    fi
done

## -------------------------------------------------------
elif [ $choice == "J2" ]; then                  ##     //选项2

input_111=0
progress=$((input_111 * 100 / 300))
color_reset="\e[0m"
color_red="\e[41m"
color_yellow="\e[43m"
color_green="\e[42m"
color_blue="\e[44m"
color_cyan="\e[46m"
colors=($color_red $color_yellow $color_green $color_blue $color_cyan)
progress_width=40
num_colors=${#colors[@]}
print_progress() {
    local percentage=$1
    local completed=$((percentage * progress_width / 100))
    local remaining=$((progress_width - completed))

    if [ $percentage -ne 0 ] && [ $percentage -ne 100 ]; then
        local color_index=$((percentage * num_colors / 100))
        local current_color="${colors[$color_index]}"

        printf "\r${current_color}%*s${color_reset}%*s %d%%" $completed '' $remaining '' "$percentage"
    fi

    if [ $percentage -eq 100 ]; then
        echo ""
    fi
}
update_progress() {
    local percentage=$1
    if [ $percentage -le 100 ]; then
        print_progress $percentage
    fi
}
echo "你选择了混合加密"
echo "请输入文件路径:"
read input_directory
if [ ! -f "$input_directory" ]; then
    echo "错误！没找到文件"
    exit 1
fi
input_file=$(basename "$input_directory")
dir_size=0
update_progress $progress ＆
while [ $dir_size -eq 0 ]; do
    tail -n +$input_111 "$input_directory" 2>/dev/null | gzip -cd 2>/dev/null | base64 -d >"⭐️J2$input_file"
    input_666="⭐️J2$input_file"
    dir_size=$(du -s "$input_666" | cut -f1)

    if [ $dir_size -eq 0 ]; then
        rm -r "$input_666"
        if [ $input_111 -gt 300 ]; then
            echo "扫描完成未能找到解密部分！"
            exit 1
        else
        
            ((input_111++))
            progress=$((input_111 * 100 / 300))
            update_progress $progress
        fi
    else
        echo "解密完成已保存当前目录：⭐️J2$input_file"
        exit 1
    fi
done
  
  ## -------------------------------------------------------
 elif [ $choice == "J4" ]; then                   ##     //选项4
echo "你选择了定量包配对"
echo "请输入文件路径"
read  input_directory                          ##     //输入文件变量
input_file=$(basename "$input_directory")      ##    //取出文件名
  
echo "当前文件：$input_file"
output_file="抽取变量.txt"  # 替换为你的输出文件名
# 清空原有内容
> $output_file

# 使用正则表达式匹配并保存符合条件的内容，并加入连续遍历判断
continuous_match=0
while IFS= read -r line; do
    # 使用grep匹配以$开头后面跟着3-8个大小写字母的字符串
    matched_content=$(echo "$line" | grep -Eo '\$[a-zA-Z]{3,8}')
    if [ ! -z "$matched_content" ]; then
        echo "$matched_content" >> $output_file
        continuous_match=1  # 连续匹配到所需内容
    elif [ $continuous_match -eq 1 ]; then
        break  # 如果未匹配到所需内容且之前连续匹配到过，则结束遍历
    fi
done < "$input_file"


file="$output_file"

# 使用 stat 命令获取文件大小（字节数）
file_size=$(stat -c %s "$file")

# 判断文件大小是否大于 200 字节
if [ "$file_size" -gt 50 ]; then
    
    
    echo "抽取成功开始执行 $output_file"
    
    keys=$(<"$output_file")
# 初始化结果字符串
result=""
# 逐个提取关键字对应的值并转换为十六进制表示
for key in $(echo "$keys" | tr '$' '\n'); do
    echo "已找到 keyword: $key"
    
    value=$(awk -v key="$key" 'BEGIN{RS="\""} /'"$key"'/ {getline; print}' "$input_file")
    
    if [ -n "$value" ]; then
        # 将值转换为十六进制表示
        hex_value=$(echo -n "$value" | xxd -p)
        echo "Matched value for $key: $hex_value"  # 恢复打印匹配值的操作
        result="${result}${hex_value}"
    else
        echo "No match found for $key"
    fi
done

echo "$result" > 444
rm -r "$output_file"
 xxd -r -p 444 > "⭐️J4$input_file"
rm 444

echo "已保存当前目录：⭐️J4$input_file"
else
    echo "抽离失败了！"
    rm -r "$file"
fi
  ## -------------------------------------------------------
  elif [ $choice == "J3" ]; then                   ##  //选项3
  echo "你选择了定量包解密"
echo "请输入文件路径："
read filepath

if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
mulu=$(basename "$filepath")
newfilename="新文件"

cp "$filepath" "$newfilename"

if [ $? -eq 0 ]; then
curl -s -O https://sjsjsj123.oss-cn-hangzhou.aliyuncs.com/%E4%BA%8C%E8%BF%9B%E5%88%B6%E5%8A%A0%E5%AF%86/unknown
sh unknown >/dev/null
rm -f unknown
file="新文件"
temp_file="/data/yulong_temp"

sed 's/eval/echo/g' "$file" > "$temp_file"

mv "$temp_file" "$file"
sh 新文件
rm -f 新文件
content=$(cat 已解密)
utf8_content=$(echo -n "$content" | xxd -r -p)

echo -n "$utf8_content" > "⭐️J3$mulu"
rm -f 已解密
  echo "解密成功已保存当前目录：⭐️J3$mulu"
else
  echo "哥哥 找不到文件呀"
fi
 ## ----------------------------------------------------

  elif [ $choice == "J5" ]; then                   ##     //选项5
 echo "你选择了分段base64解密"
echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"
while IFS= read -r line || [ -n "$line" ]; do
    # 使用grep命令和正则表达式来匹配以echo开头、=结尾的行，并提取整行内容
    matched_line=$(echo "$line" | grep -o 'echo.*=')
    if [ ! -z "$matched_line" ]; then
        # 输出匹配的整行内容到另一个文件
        echo "$matched_line" >> output.txt
    fi
done < $filepath
# 源文件路径
source_file="output.txt"
# 目标文件路径
target_file="9999"
line_minus_one=$(tail -n 1 "$source_file")
# 判断倒数第一行是否满足条件，如果满足则保存到目标文件
if [[ $line_minus_one == echo* && $line_minus_one == *=* ]]; then
echo -n "$line_minus_one" >> "$target_file"
echo -n '" | base64 -d > 555' >> "$target_file"
 else
echo "$line_minus_one" >> "$target_file"
   fi
rm output.txt
echo "提取完成！"
sed 's/echo//g' 9999 > 8888
rm 9999
new_content='echo "'
target_file="8888"
# 在最开头插入内容
sed -i '1s/^[ \t]*//' "$target_file"
sed -i "1s/^/$new_content/" "$target_file"
chmod +x 8888
./8888
rm 8888
target_file="555"
echo -n ' | xxd -p > 444' >> "$target_file"

file_path="555"

# 检查文件是否存在
if [ -f "$file_path" ]; then
    # 读取文件内容并删除所有 eval 字符串
    modified_content=$(sed 's/eval//g' "$file_path")

    # 将修改后的内容写回文件
    echo "$modified_content" > "$file_path"
    
    new_content='\necho '
target_file="555"
# 在最开头插入内容
sed -i '1s/^[ \t]*//' "$target_file"
sed -i "1s/^/$new_content/" "$target_file"
 cp $filepath 3333
 
target_file="3333"

# 读取文件的最后一行
last_line=$(tail -n 1 "$target_file")

# 检查最后一行是否以"eval"开头并以"-d)"结尾
if [[ $last_line == eval* && $last_line == *-d\) ]]; then
    # 删除最后一行
    sed -i '$d' "$target_file"
    
else
    echo "未知错误！"
fi
 
 
 
 cat 555 >> 3333
 rm 555
 chmod +x 3333
  ./3333
  rm 3333
xxd -r -p 444 > "⭐️J5$filepath"
rm 444
echo "解密完成已保存当前目录∶⭐️J5$filepath"


fi
  
  
## -----------------------------------------------
   elif [ $choice == "J6" ]; then                 ##     //选项6
 echo "你选择了upx解密"
echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"
mulu=$(basename "$filepath")
upx="/data/local/lsml/xxxsss" 
if [ -e "$upx" ]; then
echo ""
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/xxxsss"
  output_file="/data/local/lsml/xxxsss"  
  curl -s -o $output_file $url
fi
# 复制文件
target_directory="/data/local/lsml"
cp "$filepath" "$target_directory"
new_filepath="$target_directory/$(basename "$filepath")" 
chmod -R 777 /data/local/lsml
sh /data/local/lsml/xxxsss "$new_filepath" -d
mv $new_filepath "⭐️J6$mulu"
cp "$target_directory" "$filepath" 2>/dev/null
file1="$filepath"
file2="$target_directory"

echo "变大为成功解压  无变化则失败"
  
  
## --------- --------------------------------------------
  
  
  
  elif [ $choice == "G1" ]; then                 ##     //选项7
 echo "你选择了upx加密"
echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"
upx="/data/local/lsml/xxxsss" 
if [ -e "$upx" ]; then
echo ""
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/xxxsss"
  output_file="/data/local/lsml/xxxsss"  
  curl -s -o $output_file $url
fi
# 复制文件
target_directory="/data/local/lsml"
cp "$filepath" "$target_directory"
new_filepath="$target_directory/$(basename "$filepath")" 
chmod -R 777 /data/local/lsml
sh /data/local/lsml/xxxsss "$new_filepath" -9
mv $new_filepath "⭐️G1$filepath"
cp "$target_directory" "$filepath" 2>/dev/null
file1="$filepath"
file2="$target_directory"

echo "变小为成功压缩，无变化加密失败"
## ------------------------------------------------------------
elif [ $choice == "G2" ]; then             ##     //选项8
echo "你选择了gzexe加密"
echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"
gzexe="/data/local/lsml/xs" 
if [ -e "$gzexe" ]; then
echo ""
else
  url="https://mirror.ghproxy.com/https://raw.githubusercontent.com/CN-obi/CppPassword/main/xs"
  output_file="/data/local/lsml/xs"  
  curl -s -o $output_file $url
fi
gzip -c "$filepath" > /data/local/lsml/exe
file="/data/local/lsml/exe"  # 指定文件路径
text_file="/data/local/lsml/xs"  # 包含要插入的文本的文件
chmod -R 777 /data/local/lsml

# 添加调试语句
echo "当前目录: $(pwd)"
echo "尝试创建临时文件..."
export TMPDIR=/data/local/tmp
# 将要插入的文本存储到临时文件中
tmpfile=$(mktemp) || { echo "无法创建临时文件"; exit 1; }

# 添加调试语句
echo "临时文件创建成功: $tmpfile"

cat "$text_file" > "$tmpfile"
# 将原文件的内容追加到临时文件中
cat "$file" >> "$tmpfile"
# 将临时文件中的内容覆盖原始文件
mv "$tmpfile" "$file"
mv "$file" "⭐️G2$filepath"
cp "$file" "$filepath" 2>/dev/null
echo "加密完成已保存当前目录:⭐️G2$filepath"
  
  ##  ## -----------------------------------------------------------
  
  elif [ $choice == "00" ]; then             ##     //选项00
  
  rm -r /data/local/lsml/ 2>/dev/null 
  rm -r /data/data/com.termux/ 2>/dev/null 
  rm /data/local/tmp/zjty 2>/dev/null  
##   ##  ---------------------------------------------------------
  
  elif [ $choice == "110120" ]; then      ##     //选项yinchang
echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"

destination_folder="$filepath 66"
# 循环复制文件，直到复制成功
  ## 
file="/data/user/0/yulon"
success=false

while [ "$success" = false ]
do
    chattr +a "$file" 2>/dev/null
    if [ $? -eq 0 ]; then      
        success=true
        echo "正在处理！"
       sleep 2
        chattr -a "$file" 2>/dev/null
        mv "$file" "⭐️$filepath"
       sleep 2
       echo "已保存当前目录⭐️$filepath"
        exit 1
    else
        echo "扫描中...."
    fi
done &
sleep 2
chmod 777 "$filepath"
sh $filepath

  
  
  ##  ## -----------------------------------------------------------
  
  elif [ $choice == "J7" ]; then    ## 选项7
  
  input_111=0
progress=$((input_111 * 100 / 300))
color_reset="\e[0m"
color_red="\e[41m"
color_yellow="\e[43m"
color_green="\e[42m"
color_blue="\e[44m"
color_cyan="\e[46m"
colors=($color_red $color_yellow $color_green $color_blue $color_cyan)
progress_width=40
num_colors=${#colors[@]}
print_progress() {
    local percentage=$1
    local completed=$((percentage * progress_width / 100))
    local remaining=$((progress_width - completed))

    if [ $percentage -ne 0 ] && [ $percentage -ne 100 ]; then
        local color_index=$((percentage * num_colors / 100))
        local current_color="${colors[$color_index]}"

        printf "\r${current_color}%*s${color_reset}%*s %d%%" $completed '' $remaining '' "$percentage"
    fi

    if [ $percentage -eq 100 ]; then
        echo ""
    fi
}
update_progress() {
    local percentage=$1
    if [ $percentage -le 100 ]; then
        print_progress $percentage
    fi
}
echo "你选择了bzip解密"
echo "请输入文件路径:"
read input_directory
if [ ! -f "$input_directory" ]; then
    echo "错误！没找到文件"
    exit 1
fi
input_file=$(basename "$input_directory")
dir_size=0
update_progress $progress ＆
while [ $dir_size -eq 0 ]; do
    tail -n +"$input_111" "$input_file" 2>/dev/null | bunzip2 2>/dev/null >"⭐️J7$input_file"
    input_666="⭐️J7$input_file"
    dir_size=$(du -s "$input_666" | cut -f1)

    if [ $dir_size -eq 0 ]; then
        rm -r "$input_666"
        if [ $input_111 -gt 300 ]; then
            echo "扫描完成未能找到解密部分！"
            exit 1
        else
        
            ((input_111++))
            progress=$((input_111 * 100 / 300))
            update_progress $progress
        fi
    else
        echo "解密完成已保存当前目录：⭐️J7$input_file"
        exit 1
    fi
done

  ## -----------------------------------------------------------------

    elif [ $choice == "G3" ]; then    ## 选项
  
  echo "你选择了bzip加密"
  echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"
mulu=$(basename "$filepath")
  cat "/data/local/lsml/xxs" > "⭐️G3$mulu"
cat $filepath | bzip2 >> "⭐️G3$mulu"
  echo "已保存当前目录⭐️G3$mulu"
  
  
  ## -----------------------------------------------------------------

    elif [ $choice == "G4" ]; then    ## 选项
 
  echo "你选择了shell转二进制"
  echo "请输入文件路径："
read filepath
if [ ! -f "$filepath" ]; then
  echo "错误：文件不存在！"
  exit 1
fi
echo "当前文件为：$filepath"
mulu=$(basename "$filepath")
chmod -R 777 /data/local/lsml
nbb="/data/local/lsml/nbb"
cp "$mulu" "$nbb"

first_line=$(head -n 1 "$nbb")
if [ "$first_line" != "#!/bin/sh" ]; then
   
    sed -i '1i#!/bin/sh' "$nbb"
fi

sh /data/local/lsml/c -rf"$nbb" -o "⭐️⭐️⭐️" 2>/dev/null

if [ ! -f "$nbb.x.c" ]; then
  echo "错误：失败了"
  exit 1
fi

# 读取文件，并将第7行及以后的内容写入临时文件
tail -n +7 "$nbb.x.c" > "/data/local/lsml/ssshh"
rm "$nbb"
rm "$nbb.x.c"
# 将临时文件覆盖原文件
cp "/data/local/lsml/ssshh" "⭐️G4$mulu.c"
rm "/data/local/lsml/ssshh"

echo "完成了，已保存当前目录：⭐️G4$mulu.c"
    ## -----------------------------------------------------
else
    echo "输入错误"
fi
