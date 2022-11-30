function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
      end
      tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then
          result[i].isUseful = false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1] = v.address
      end
    end
    if (#data > 0) then
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end

function Main()
  SN = gg.choice({
"🔰喜羊羊刷号1🔰",
  "🔰喜羊羊刷号2🔰",
 "🔰喜羊羊多功能🔰",
 "🔰喜羊羊刷号4🔰",
 "🔰喜羊羊刷号5🔰",
"🔰喜羊羊刷号6🔰",
  "🔰退出脚本🔰"
 }, nil, "喜羊羊官方群1;607641836群2;536825899")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
   if SN == 4 then
   d()
  end
   if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   Exit()
  end
  
 
end
function a()
local aaa = gg.makeRequest("http://kgmeimu.zn27.cn/辅助.lua").content
if aaa == nil then
gg.alert("脚本无法执行哦")
else
gg.toast("正在启动...")
pcall(load(aaa))
end
end
function b()
local aaa = gg.makeRequest("http://kgmeimu.zn27.cn/喜羊羊刷号新版本.lua").content
if aaa == nil then
gg.alert("脚本无法执行哦")
else
gg.toast("正在启动...")
pcall(load(aaa))
end
end
function c()
local aaa = gg.makeRequest("http://kgmeimu.zn27.cn/39976.lua").content
if aaa == nil then
gg.alert("脚本无法执行哦")
else
gg.toast("正在启动...")
pcall(load(aaa))
end
end
function d()
local aaa = gg.makeRequest("http://kgmeimu.zn27.cn/1.lua").content
if aaa == nil then
gg.alert("脚本无法执行哦")
else
gg.toast("正在启动...")
pcall(load(aaa))
end
end
function e()
local aaa = gg.makeRequest("http://kgmeimu.zn27.cn/3.lua").content
if aaa == nil then
gg.alert("脚本无法执行哦")
else
gg.toast("正在启动...")
pcall(load(aaa))
end
end
function f()
local aaa = gg.makeRequest("http://kgmeimu.zn27.cn/防闪.lua").content
if aaa == nil then
gg.alert("脚本无法执行哦")
else
gg.toast("正在启动...")
pcall(load(aaa))
end
end
function Exit()
print("没有故事，没有爱人，但将匹马活的潇洒")
os.exit()
end
cs = "历经沧桑欲何求 只为一生不低头"
while true do
        if gg.isVisible() then
            gg.setVisible(false)
            Main()
            end
       end
       
  
