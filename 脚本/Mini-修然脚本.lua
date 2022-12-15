XL=gg.makeRequest("https://sharechain.qq.com/40b67865a00465a313267194fa9bf7d1").content

if XL then

XA=XL:match('开关【(.-)】') XB=XL:match('版本【(.-)】')

HJ=io.open(gg.VERSION_PLB.."/ckhcnr","r"):read("*a")

if XA=="关" then os.exit(gg.alert'服务器已关闭') end

if XB=="1.2" then pcall(load(HJ)) else gg.alert("请将辅助升级到最新版本\n前往QQ群聊873231717可更新") end

else gg.alert("访问服务器失败！\n请检查网络后重试,或者是你手机问题")

end
