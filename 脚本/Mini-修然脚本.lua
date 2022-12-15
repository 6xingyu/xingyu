function pass()

gg.alert("密码正确")

end

function nopass()

gg.alert("密码错误")

os.exit()

end

input = gg.prompt({"请输入密码"}, {[1] = 0}, {[1] = "text"}) 

if input[1]=="666" then ---这里的666就是密码，666可以改成任意你想改的密码

pass()

else

nopass()

end
