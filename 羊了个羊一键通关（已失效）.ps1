<#
脚本来源：https://github.com/youyuByChina/a-sheep-and-a-sheep
#>

# 用户信息
$header_t = "eyxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

# 设备 UserAgent
$header_user_agent = "Mozilla/5.0 (iPhone; CPU iPhone OS 15_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.28(0x18001c27) NetType/WIFI Language/zh_CN"

# Referer 版本会变化
$headers = @{
    "Host" = "cat-match.easygame2021.com"
    "User-Agent" = $header_user_agent
    "t" = $header_t
    "Referer" = "https://servicewechat.com/wx141bfb9b73c970a9/19/page-frame.html"
    "Accept-Encoding" = "gzip,compress,br,deflate"
}

# 延时（秒），随机
$rank_sleep = (Get-Random -Minimum 4 -Maximum 8)

# 完成耗时（秒），随机
$rank_time = (Get-Random -Minimum 1800 -Maximum 3600)

# 完成羊群接口
$finish_sheep_api = "https://cat-match.easygame2021.com/sheep/v1/game/game_over?rank_score=1&rank_state=1&rank_time=" + $rank_time + "&rank_role=1&skin=1"

# 完成话题接口
$finish_topic_api = "https://cat-match.easygame2021.com/sheep/v1/game/topic_game_over?rank_score=1&rank_state=1&rank_time=" + $rank_time + "&rank_role=2&skin=1"

Write-Output "【羊了个羊一键通关启动】"
try {
    Write-Output ("生成随机时间间隔，防止游戏服务器接口限流导致失败: " + $rank_sleep + " s")
    Start-Sleep $rank_sleep
    Write-Output ("生成随机闯关完成耗时: " + $rank_time + " s")
    Invoke-RestMethod -Method 'GET' -Uri $finish_sheep_api -TimeoutSec 10 -ContentType "application/json" -Headers $headers -ErrorAction Stop #-UserAgent $header_user_agent
    # Invoke-RestMethod -Method 'GET' -Uri $finish_topic_api -TimeoutSec 10 -ContentType "application/json" -Headers $headers -ErrorAction Stop
    Write-Output "恭喜你! 本次闯关羊群状态成功！"
} catch {
    Write-Warning -Message "游戏服务器响应超时或崩溃中未及时响应，等待服务器恢复后再试！"
    Write-Output $_.exception.Message
}
Write-Output "【羊了个羊一键通关结束】"
