
Sukor=gg.makeRequest("http://yyzn27.cn/lin.php").content --启动次数网址

XR=Sukor:match("全网启动次数\":(.-),\"")  --这个不要改，改了会错误

function pass()
gg.alert("密码正确")
end
function nopass()
gg.alert("密码错误")
input = gg.prompt({"全网启动次数:"..XR.."次\n每日随机密码\n加QQ群873231717 在群内@Q群管家查看密码"}, {[1] = ''}, {[1] = "text"}) 
if input[1]=="982556" then
pass()
else
nopass()
end
end
input = gg.prompt({"全网启动次数:"..XR.."次\n每日随机密码\n加QQ群873231717"}, {[1] = ''}, {[1] = "text"}) 
if input[1]=="982556" then
pass()
else
nopass()
end

