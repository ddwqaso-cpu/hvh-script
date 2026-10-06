-- =========================================================
--  PHANTOM HvH v2.0  |  Discord: https://discord.gg/NaswmCxrE
--  ВСЁ ВЫКЛЮЧЕНО ПРИ ИНЖЕКТЕ  |  Меню: RightControl
-- =========================================================
local Players=game:GetService("Players")
local RunService=game:GetService("RunService")
local UIS=game:GetService("UserInputService")
local RS=game:GetService("ReplicatedStorage")
local WS=game:GetService("Workspace")
local Lighting=game:GetService("Lighting")
local Tween=game:GetService("TweenService")
local GuiService=game:GetService("GuiService")
local lp=Players.LocalPlayer

local C={
  SilentAim=false,SA_FOV=150,SA_Hitbox="Head",SA_TeamCheck=true,SA_WallCheck=false,
  SA_AutoFire=false,SA_Visible=true,SA_Smoothing=0,SA_Prediction=0,SA_HitLog=true,
  Aimbot=false,AB_FOV=120,AB_Smooth=15,AB_Part="Head",AB_TeamCheck=true,
  AB_AutoFire=false,AB_Keybind=Enum.KeyCode.E,
  TriggerBot=false,TB_Delay=5,TB_Range=100,
  NoRecoil=false,NoSpread=false,RapidFire=false,InstantHit=false,
  InfiniteAmmo=false,AutoReload=false,AutoSwitch=false,
  KillAura=false,KA_Range=15,KA_Delay=10,
  HitboxExpander=false,HB_Size=5,HB_Transparency=70,HB_Part="Head",HB_TeamCheck=true,
  AntiAim=false,AA_Mode="Spin",AA_Speed=10,
  FakeLag=false,FakeLag_Amount=10,Desync=false,Desync_Amount=100,
  BunnyHop=false,AutoStrafe=false,AutoParry=false,AutoBlock=false,
  AutoDodge=false,AutoCounter=false,
  SpeedHack=false,Speed_Value=50,JumpPower=false,Jump_Value=100,
  InfiniteJump=false,Fly=false,Fly_Speed=100,Fly_Mode="Hold",
  NoClip=false,WallClimb=false,Slide=false,FastLadder=false,
  Teleport=false,Sprint=false,
  ESP=false,ESP_Box=false,ESP_Name=false,ESP_Health=false,ESP_Distance=false,
  ESP_Tracer=false,ESP_TeamCheck=true,ESP_Skeleton=false,ESP_HeadDot=false,
  ESP_Chams=false,ESP_ChamsColor=Color3.fromRGB(255,0,0),ESP_ChamsTransparency=50,
  ESP_FillColor=Color3.fromRGB(255,255,255),ESP_OutlineColor=Color3.fromRGB(0,0,0),
  ESP_MaxDistance=1000,ESP_VisibleOnly=false,
  FullBright=false,NoFog=false,XRay=false,Wireframe=false,
  Ambient=false,AmbientColor=Color3.fromRGB(128,128,128),
  NoParticles=false,NoGrass=false,Skybox=false,
  ClockTime=false,ClockValue=14,
  FOVCircle=false,FOV_Color=Color3.fromRGB(0,255,100),
  Crosshair=false,Crosshair_Color=Color3.fromRGB(255,255,255),Crosshair_Size=10,
  Watermark=true,WatermarkText="Phantom | HvH",
  AntiAFK=false,AutoRespawn=false,AutoHeal=false,
  GodMode=false,NoFallDamage=false,
  AutoCollect=false,AutoFarm=false,AutoKill=false,
  ChatSpoofer=false,NameSpoofer=false,FakeChat=false,
  ServerHop=false,Rejoin=false,
  Keybind=Enum.KeyCode.RightShift,
  Logs=true,MenuKey=Enum.KeyCode.RightControl,
}

if lp.PlayerGui:FindFirstChild("PhantomMenu") then lp.PlayerGui.PhantomMenu:Destroy() end

local screen=Instance.new("ScreenGui")
screen.Name="PhantomMenu"
screen.ResetOnSpawn=false
screen.IgnoreGuiInset=true
screen.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
screen.Parent=lp:WaitForChild("PlayerGui")

local COL={
  bg=Color3.fromRGB(15,15,18),
  panel=Color3.fromRGB(24,24,28),
  panel2=Color3.fromRGB(30,30,35),
  border=Color3.fromRGB(50,50,58),
  accent=Color3.fromRGB(140,90,220),
  accent2=Color3.fromRGB(90,130,220),
  text=Color3.fromRGB(230,230,235),
  textDim=Color3.fromRGB(140,140,150),
  check=Color3.fromRGB(140,90,220),
  slider=Color3.fromRGB(120,80,200),
  key=Color3.fromRGB(55,55,62),
  red=Color3.fromRGB(220,70,70),
  green=Color3.fromRGB(80,220,130),
  yellow=Color3.fromRGB(230,200,70),
}
local FONT,FONT_B=Enum.Font.Gotham,Enum.Font.GothamBold

local main=Instance.new("Frame")
main.Name="Main"
main.Size=UDim2.new(0,780,0,540)
main.Position=UDim2.new(0.5,-390,0.5,-270)
main.BackgroundColor3=COL.bg
main.BorderSizePixel=0
main.Active=true
main.Draggable=true
main.Parent=screen
Instance.new("UICorner",main).CornerRadius=UDim.new(0,6)
local ms=Instance.new("UIStroke",main)
ms.Color=COL.accent
ms.Thickness=1

local topBar=Instance.new("Frame")
topBar.Size=UDim2.new(1,0,0,34)
topBar.BackgroundColor3=COL.bg
topBar.BorderSizePixel=0
topBar.Parent=main
Instance.new("UICorner",topBar).CornerRadius=UDim.new(0,6)

local title=Instance.new("TextLabel")
title.Size=UDim2.new(0,250,1,0)
title.Position=UDim2.new(0,12,0,0)
title.BackgroundTransparency=1
title.Text="PHANTOM  |  HvH  v2.0"
title.TextColor3=COL.accent
title.Font=FONT_B
title.TextSize=15
title.TextXAlignment=Enum.TextXAlignment.Left
title.Parent=topBar

local discordBtn=Instance.new("TextButton")
discordBtn.Size=UDim2.new(0,75,0,22)
discordBtn.Position=UDim2.new(1,-115,0.5,-11)
discordBtn.BackgroundColor3=Color3.fromRGB(88,101,242)
discordBtn.BorderSizePixel=0
discordBtn.Text="Discord"
discordBtn.TextColor3=Color3.fromRGB(255,255,255)
discordBtn.Font=FONT_B
discordBtn.TextSize=12
discordBtn.Parent=topBar
Instance.new("UICorner",discordBtn).CornerRadius=UDim.new(0,4)
discordBtn.MouseButton1Click:Connect(function()
  pcall(function() GuiService:OpenBrowserWindow("https://discord.gg/NaswmCxrE") end)
end)

local closeBtn=Instance.new("TextButton")
closeBtn.Size=UDim2.new(0,30,1,0)
closeBtn.Position=UDim2.new(1,-30,0,0)
closeBtn.BackgroundTransparency=1
closeBtn.Text="✕"
closeBtn.TextColor3=COL.textDim
closeBtn.Font=FONT_B
closeBtn.TextSize=14
closeBtn.Parent=topBar
closeBtn.MouseButton1Click:Connect(function() screen.Enabled=false end)

local tabsHolder=Instance.new("Frame")
tabsHolder.Size=UDim2.new(1,-10,0,28)
tabsHolder.Position=UDim2.new(0,5,0,36)
tabsHolder.BackgroundTransparency=1
tabsHolder.Parent=main
local tl=Instance.new("UIListLayout",tabsHolder)
tl.FillDirection=Enum.FillDirection.Horizontal
tl.SortOrder=Enum.SortOrder.LayoutOrder
tl.Padding=UDim.new(0,14)
tl.VerticalAlignment=Enum.VerticalAlignment.Center

local content=Instance.new("Frame")
content.Size=UDim2.new(1,-20,1,-80)
content.Position=UDim2.new(0,10,0,70)
content.BackgroundTransparency=1
content.Parent=main

local function section(parent,title,pos,size)
  local s=Instance.new("Frame")
  s.Size=size
  s.Position=pos
  s.BackgroundColor3=COL.panel
  s.BorderSizePixel=0
  s.Parent=parent
  Instance.new("UICorner",s).CornerRadius=UDim.new(0,5)
  local st=Instance.new("UIStroke",s)
  st.Color=COL.border
  st.Thickness=1
  local t=Instance.new("TextLabel")
  t.Size=UDim2.new(1,-16,0,22)
  t.Position=UDim2.new(0,8,0,2)
  t.BackgroundTransparency=1
  t.Text=title
  t.TextColor3=COL.accent
  t.Font=FONT_B
  t.TextSize=12
  t.TextXAlignment=Enum.TextXAlignment.Left
  t.Parent=s
  local sep=Instance.new("Frame")
  sep.Size=UDim2.new(1,-12,0,1)
  sep.Position=UDim2.new(0,6,0,26)
  sep.BackgroundColor3=COL.accent
  sep.BorderSizePixel=0
  sep.Parent=s
  return s
end

local function check(parent,text,pos,state,cb)
  local h=Instance.new("Frame")
  h.Size=UDim2.new(1,-16,0,22)
  h.Position=pos
  h.BackgroundTransparency=1
  h.Parent=parent
  local box=Instance.new("Frame")
  box.Size=UDim2.new(0,14,0,14)
  box.Position=UDim2.new(0,0,0.5,-7)
  box.BackgroundColor3=state and COL.check or Color3.fromRGB(40,40,44)
  box.BorderSizePixel=0
  box.Parent=h
  Instance.new("UICorner",box).CornerRadius=UDim.new(0,3)
  local bs=Instance.new("UIStroke",box)
  bs.Color=COL.border
  bs.Thickness=1
  local lbl=Instance.new("TextLabel")
  lbl.Size=UDim2.new(1,-22,1,0)
  lbl.Position=UDim2.new(0,22,0,0)
  lbl.BackgroundTransparency=1
  lbl.Text=text
  lbl.TextColor3=COL.text
  lbl.Font=FONT
  lbl.TextSize=12
  lbl.TextXAlignment=Enum.TextXAlignment.Left
  lbl.Parent=h
  local st=state
  local btn=Instance.new("TextButton")
  btn.Size=UDim2.new(1,0,1,0)
  btn.BackgroundTransparency=1
  btn.Text=""
  btn.Parent=h
  btn.MouseButton1Click:Connect(function()
    st=not st
    box.BackgroundColor3=st and COL.check or Color3.fromRGB(40,40,44)
    if cb then cb(st) end
  end)
  return h
end

local function slider(parent,label,value,min,max,pos,cb)
  local h=Instance.new("Frame")
  h.Size=UDim2.new(1,-16,0,32)
  h.Position=pos
  h.BackgroundTransparency=1
  h.Parent=parent
  local lbl=Instance.new("TextLabel")
  lbl.Size=UDim2.new(0.5,0,0,14)
  lbl.BackgroundTransparency=1
  lbl.Text=label
  lbl.TextColor3=COL.text
  lbl.Font=FONT
  lbl.TextSize=11
  lbl.TextXAlignment=Enum.TextXAlignment.Left
  lbl.Parent=h
  local val=Instance.new("TextLabel")
  val.Size=UDim2.new(0.5,0,0,14)
  val.Position=UDim2.new(0.5,0,0,0)
  val.BackgroundTransparency=1
  val.Text=tostring(value)
  val.TextColor3=COL.text
  val.Font=FONT
  val.TextSize=11
  val.TextXAlignment=Enum.TextXAlignment.Right
  val.Parent=h
  local bar=Instance.new("Frame")
  bar.Size=UDim2.new(1,0,0,6)
  bar.Position=UDim2.new(0,0,0,20)
  bar.BackgroundColor3=Color3.fromRGB(40,40,44)
  bar.BorderSizePixel=0
  bar.Parent=h
  Instance.new("UICorner",bar).CornerRadius=UDim.new(1,0)
  local fill=Instance.new("Frame")
  fill.Size=UDim2.new((value-min)/(max-min),0,1,0)
  fill.BackgroundColor3=COL.slider
  fill.BorderSizePixel=0
  fill.Parent=bar
  Instance.new("UICorner",fill).CornerRadius=UDim.new(1,0)
  local knob=Instance.new("Frame")
  knob.Size=UDim2.new(0,10,0,10)
  knob.Position=UDim2.new((value-min)/(max-min),-5,0.5,-5)
  knob.BackgroundColor3=Color3.fromRGB(220,220,220)
  knob.BorderSizePixel=0
  knob.Parent=bar
  Instance.new("UICorner",knob).CornerRadius=UDim.new(1,0)
  local dragging=false
  local btn=Instance.new("TextButton")
  btn.Size=UDim2.new(1,0,1,0)
  btn.BackgroundTransparency=1
  btn.Text=""
  btn.Parent=bar
  local function upd(i)
    local r=math.clamp((i.Position.X-bar.AbsolutePosition.X)/bar.AbsoluteSize.X,0,1)
    local v=math.floor(min+(max-min)*r+0.5)
    fill.Size=UDim2.new(r,0,1,0)
    knob.Position=UDim2.new(r,-5,0.5,-5)
    val.Text=tostring(v)
    if cb then cb(v) end
  end
  btn.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging=true; upd(i) end
  end)
  UIS.InputChanged:Connect(function(i)
    if dragging and i.UserInputType==Enum.UserInputType.MouseMovement then upd(i) end
  end)
  UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging=false end
  end)
  return h
end

local function keybind(parent,label,key,pos,cb)
  local h=Instance.new("Frame")
  h.Size=UDim2.new(1,-16,0,22)
  h.Position=pos
  h.BackgroundTransparency=1
  h.Parent=parent
  local lbl=Instance.new("TextLabel")
  lbl.Size=UDim2.new(0.6,0,1,0)
  lbl.BackgroundTransparency=1
  lbl.Text=label
  lbl.TextColor3=COL.text
  lbl.Font=FONT
  lbl.TextSize=12
  lbl.TextXAlignment=Enum.TextXAlignment.Left
  lbl.Parent=h
  local kb=Instance.new("TextButton")
  kb.Size=UDim2.new(0,44,0,18)
  kb.Position=UDim2.new(1,-44,0.5,-9)
  kb.BackgroundColor3=COL.key
  kb.BorderSizePixel=0
  kb.Text=key.Name
  kb.TextColor3=COL.text
  kb.Font=FONT
  kb.TextSize=11
  kb.Parent=h
  Instance.new("UICorner",kb).CornerRadius=UDim.new(0,3)
  local w=false
  kb.MouseButton1Click:Connect(function() w=true; kb.Text="..." end)
  UIS.InputBegan:Connect(function(i,gpe)
    if gpe then return end
    if w and i.UserInputType==Enum.UserInputType.Keyboard then
      kb.Text=i.KeyCode.Name
      w=false
      if cb then cb(i.KeyCode) end
    end
  end)
  return h
end

local function dropdown(parent,label,value,options,pos,cb)
  local h=Instance.new("Frame")
  h.Size=UDim2.new(1,-16,0,24)
  h.Position=pos
  h.BackgroundTransparency=1
  h.Parent=parent
  local lbl=Instance.new("TextLabel")
  lbl.Size=UDim2.new(0.5,0,1,0)
  lbl.BackgroundTransparency=1
  lbl.Text=label
  lbl.TextColor3=COL.text
  lbl.Font=FONT
  lbl.TextSize=12
  lbl.TextXAlignment=Enum.TextXAlignment.Left
  lbl.Parent=h
  local dd=Instance.new("TextButton")
  dd.Size=UDim2.new(0.5,-4,1,0)
  dd.Position=UDim2.new(0.5,4,0,0)
  dd.BackgroundColor3=COL.panel2
  dd.BorderSizePixel=0
  dd.Text=value.."  ▾"
  dd.TextColor3=COL.text
  dd.Font=FONT
  dd.TextSize=11
  dd.Parent=h
  Instance.new("UICorner",dd).CornerRadius=UDim.new(0,3)
  local open=false
  local list
  dd.MouseButton1Click:Connect(function()
    open=not open
    if open then
      list=Instance.new("Frame")
      list.Size=UDim2.new(0,dd.AbsoluteSize.X,0,#options*20+4)
      list.Position=UDim2.new(0,dd.AbsolutePosition.X-h.AbsolutePosition.X,0,dd.AbsolutePosition.Y-h.AbsolutePosition.Y+dd.AbsoluteSize.Y+2)
      list.BackgroundColor3=COL.panel2
      list.BorderSizePixel=0
      list.ZIndex=10
      list.Parent=h
      Instance.new("UICorner",list).CornerRadius=UDim.new(0,3)
      local ls=Instance.new("UIStroke",list)
      ls.Color=COL.border
      ls.Thickness=1
      for i,opt in ipairs(options) do
        local ob=Instance.new("TextButton")
        ob.Size=UDim2.new(1,-4,0,18)
        ob.Position=UDim2.new(0,2,0,2+(i-1)*20)
        ob.BackgroundTransparency=1
        ob.Text=opt
        ob.TextColor3=COL.text
        ob.Font=FONT
        ob.TextSize=11
        ob.TextXAlignment=Enum.TextXAlignment.Left
        ob.ZIndex=11
        ob.Parent=list
        ob.MouseButton1Click:Connect(function()
          dd.Text=opt.."  ▾"
          if cb then cb(opt) end
          list:Destroy()
          open=false
        end)
      end
    else
      if list then list:Destroy() end
      open=false
    end
  end)
  return h
end

local function colorpicker(parent,label,value,pos,cb)
  local h=Instance.new("Frame")
  h.Size=UDim2.new(1,-16,0,22)
  h.Position=pos
  h.BackgroundTransparency=1
  h.Parent=parent
  local lbl=Instance.new("TextLabel")
  lbl.Size=UDim2.new(0.6,0,1,0)
  lbl.BackgroundTransparency=1
  lbl.Text=label
  lbl.TextColor3=COL.text
  lbl.Font=FONT
  lbl.TextSize=12
  lbl.TextXAlignment=Enum.TextXAlignment.Left
  lbl.Parent=h
  local sw=Instance.new("TextButton")
  sw.Size=UDim2.new(0,44,0,18)
  sw.Position=UDim2.new(1,-44,0.5,-9)
  sw.BackgroundColor3=value
  sw.BorderSizePixel=0
  sw.Text=""
  sw.Parent=h
  Instance.new("UICorner",sw).CornerRadius=UDim.new(0,3)
  local cur=value
  sw.MouseButton1Click:Connect(function()
    cur=Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
    sw.BackgroundColor3=cur
    if cb then cb(cur) end
  end)
  return h
end

local function button(parent,text,pos,cb)
  local b=Instance.new("TextButton")
  b.Size=UDim2.new(1,-16,0,22)
  b.Position=pos
  b.BackgroundColor3=COL.panel2
  b.BorderSizePixel=0
  b.Text=text
  b.TextColor3=COL.text
  b.Font=FONT_B
  b.TextSize=11
  b.Parent=parent
  Instance.new("UICorner",b).CornerRadius=UDim.new(0,3)
  local s=Instance.new("UIStroke",b)
  s.Color=COL.border
  s.Thickness=1
  b.MouseButton1Click:Connect(cb)
  return b
end

local pages,buttons={},{}
local function tab(name)
  local btn=Instance.new("TextButton")
  btn.Size=UDim2.new(0,70,1,0)
  btn.BackgroundTransparency=1
  btn.Text=name
  btn.TextColor3=COL.textDim
  btn.Font=FONT
  btn.TextSize=13
  btn.Parent=tabsHolder
  local page=Instance.new("Frame")
  page.Size=UDim2.new(1,0,1,0)
  page.BackgroundTransparency=1
  page.Visible=false
  page.Parent=content
  pages[name]=page
  buttons[name]=btn
  btn.MouseButton1Click:Connect(function()
    for n,p in pairs(pages) do
      p.Visible=(n==name)
      buttons[n].TextColor3=(n==name) and COL.accent or COL.textDim
    end
  end)
  return page
end

local logFrame=Instance.new("ScrollingFrame")
logFrame.Size=UDim2.new(0,260,0,200)
logFrame.Position=UDim2.new(1,-270,1,-210)
logFrame.BackgroundColor3=COL.panel
logFrame.BorderSizePixel=0
logFrame.ScrollBarThickness=4
logFrame.ScrollBarImageColor3=COL.accent
logFrame.CanvasSize=UDim2.new(0,0,0,0)
logFrame.Parent=main
Instance.new("UICorner",logFrame).CornerRadius=UDim.new(0,5)
local ll=Instance.new("UIListLayout",logFrame)
ll.SortOrder=Enum.SortOrder.LayoutOrder
ll.Padding=UDim.new(0,1)
local logCount=0
function log(text,color)
  if not C.Logs then return end
  logCount=logCount+1
  local t=Instance.new("TextLabel")
  t.Size=UDim2.new(1,-4,0,14)
  t.BackgroundTransparency=1
  t.Text=string.format("[%s] %s",os.date("%H:%M:%S"),text)
  t.TextColor3=color or COL.text
  t.Font=FONT
  t.TextSize=10
  t.TextXAlignment=Enum.TextXAlignment.Left
  t.LayoutOrder=logCount
  t.Parent=logFrame
  logFrame.CanvasSize=UDim2.new(0,0,0,ll.AbsoluteContentSize.Y)
end

-- ===== COMBAT TAB =====
local combat=tab("Combat")

local sa=section(combat,"Silent Aim",UDim2.new(0,0,0,0),UDim2.new(0,240,0,400))
check(sa,"Enabled",UDim2.new(0,8,0,36),false,function(v) C.SilentAim=v; log("SilentAim: "..tostring(v),v and COL.green or COL.red) end)
slider(sa,"FOV",150,0,500,UDim2.new(0,8,0,62),function(v) C.SA_FOV=v end)
dropdown(sa,"Hitbox","Head",{"Head","HumanoidRootPart","UpperTorso","LowerTorso"},UDim2.new(0,8,0,100),function(v) C.SA_Hitbox=v end)
check(sa,"Team Check",UDim2.new(0,8,0,128),true,function(v) C.SA_TeamCheck=v end)
check(sa,"Wall Check",UDim2.new(0,8,0,154),false,function(v) C.SA_WallCheck=v end)
check(sa,"Visible Check",UDim2.new(0,8,0,180),true,function(v) C.SA_Visible=v end)
check(sa,"Auto Fire",UDim2.new(0,8,0,206),false,function(v) C.SA_AutoFire=v end)
check(sa,"Hit Log",UDim2.new(0,8,0,232),true,function(v) C.SA_HitLog=v end)
slider(sa,"Smoothing",0,0,100,UDim2.new(0,8,0,258),function(v) C.SA_Smoothing=v/100 end)
slider(sa,"Prediction",0,0,100,UDim2.new(0,8,0,294),function(v) C.SA_Prediction=v/100 end)

local ab=section(combat,"Aimbot",UDim2.new(0,250,0,0),UDim2.new(0,240,0,400))
check(ab,"Enabled",UDim2.new(0,8,0,36),false,function(v) C.Aimbot=v end)
slider(ab,"FOV",120,0,500,UDim2.new(0,8,0,62),function(v) C.AB_FOV=v end)
slider(ab,"Smooth",15,0,100,UDim2.new(0,8,0,100),function(v) C.AB_Smooth=v end)
dropdown(ab,"Aim Part","Head",{"Head","HumanoidRootPart","UpperTorso"},UDim2.new(0,8,0,138),function(v) C.AB_Part=v end)
check(ab,"Team Check",UDim2.new(0,8,0,166),true,function(v) C.AB_TeamCheck=v end)
check(ab,"Auto Fire",UDim2.new(0,8,0,192),false,function(v) C.AB_AutoFire=v end)
keybind(ab,"Aim Key",Enum.KeyCode.E,UDim2.new(0,8,0,218),function(k) C.AB_Keybind=k end)
check(ab,"TriggerBot",UDim2.new(0,8,0,246),false,function(v) C.TriggerBot=v end)
slider(ab,"TB Delay",5,1,50,UDim2.new(0,8,0,272),function(v) C.TB_Delay=v end)
slider(ab,"TB Range",100,10,500,UDim2.new(0,8,0,308),function(v) C.TB_Range=v end)

local wp=section(combat,"Weapon",UDim2.new(0,500,0,0),UDim2.new(0,240,0,400))
check(wp,"No Recoil",UDim2.new(0,8,0,36),false,function(v) C.NoRecoil=v end)
check(wp,"No Spread",UDim2.new(0,8,0,62),false,function(v) C.NoSpread=v end)
check(wp,"Rapid Fire",UDim2.new(0,8,0,88),false,function(v) C.RapidFire=v end)
check(wp,"Instant Hit",UDim2.new(0,8,0,114),false,function(v) C.InstantHit=v end)
check(wp,"Infinite Ammo",UDim2.new(0,8,0,140),false,function(v) C.InfiniteAmmo=v end)
check(wp,"Auto Reload",UDim2.new(0,8,0,166),false,function(v) C.AutoReload=v end)
check(wp,"Auto Switch",UDim2.new(0,8,0,192),false,function(v) C.AutoSwitch=v end)
check(wp,"Auto Parry",UDim2.new(0,8,0,218),false,function(v) C.AutoParry=v end)
check(wp,"Auto Block",UDim2.new(0,8,0,244),false,function(v) C.AutoBlock=v end)
check(wp,"Auto Dodge",UDim2.new(0,8,0,270),false,function(v) C.AutoDodge=v end)
check(wp,"Auto Counter",UDim2.new(0,8,0,296),false,function(v) C.AutoCounter=v end)
check(wp,"Bunny Hop",UDim2.new(0,8,0,322),false,function(v) C.BunnyHop=v end)
check(wp,"Auto Strafe",UDim2.new(0,8,0,348),false,function(v) C.AutoStrafe=v end)

local me=section(combat,"Melee / Hitbox / AA",UDim2.new(0,750,0,0),UDim2.new(0,240,0,400))
check(me,"Kill Aura",UDim2.new(0,8,0,36),false,function(v) C.KillAura=v end)
slider(me,"KA Range",15,1,50,UDim2.new(0,8,0,62),function(v) C.KA_Range=v end)
slider(me,"KA Delay",10,1,100,UDim2.new(0,8,0,100),function(v) C.KA_Delay=v/100 end)
check(me,"Hitbox Expander",UDim2.new(0,8,0,138),false,function(v) C.HitboxExpander=v end)
slider(me,"HB Size",5,1,30,UDim2.new(0,8,0,164),function(v) C.HB_Size=v end)
slider(me,"HB Transparency",70,0,100,UDim2.new(0,8,0,202),function(v) C.HB_Transparency=v end)
check(me,"HB Team Check",UDim2.new(0,8,0,240),true,function(v) C.HB_TeamCheck=v end)
check(me,"Anti-Aim",UDim2.new(0,8,0,266),false,function(v) C.AntiAim=v end)
dropdown(me,"AA Mode","Spin",{"Spin","Jitter","Static"},UDim2.new(0,8,0,292),function(v) C.AA_Mode=v end)
slider(me,"AA Speed",10,1,50,UDim2.new(0,8,0,320),function(v) C.AA_Speed=v end)
check(me,"Fake Lag",UDim2.new(0,8,0,356),false,function(v) C.FakeLag=v end)
check(me,"Desync",UDim2.new(0,8,0,382),false,function(v) C.Desync=v end)
-- ===== MOVEMENT TAB =====
local move=tab("Movement")

local sp=section(move,"Speed",UDim2.new(0,0,0,0),UDim2.new(0,240,0,400))
check(sp,"Speed Hack",UDim2.new(0,8,0,36),false,function(v) C.SpeedHack=v end)
slider(sp,"Speed",50,16,500,UDim2.new(0,8,0,62),function(v) C.Speed_Value=v end)
check(sp,"Jump Power",UDim2.new(0,8,0,100),false,function(v) C.JumpPower=v end)
slider(sp,"Jump",100,50,500,UDim2.new(0,8,0,126),function(v) C.Jump_Value=v end)
check(sp,"Infinite Jump",UDim2.new(0,8,0,164),false,function(v) C.InfiniteJump=v end)
check(sp,"Bunny Hop",UDim2.new(0,8,0,190),false,function(v) C.BunnyHop=v end)
check(sp,"Auto Strafe",UDim2.new(0,8,0,216),false,function(v) C.AutoStrafe=v end)
check(sp,"Sprint",UDim2.new(0,8,0,242),false,function(v) C.Sprint=v end)

local fl=section(move,"Flight",UDim2.new(0,250,0,0),UDim2.new(0,240,0,400))
check(fl,"Fly",UDim2.new(0,8,0,36),false,function(v) C.Fly=v end)
slider(fl,"Fly Speed",100,10,1000,UDim2.new(0,8,0,62),function(v) C.Fly_Speed=v end)
dropdown(fl,"Fly Mode","Hold",{"Hold","Toggle"},UDim2.new(0,8,0,100),function(v) C.Fly_Mode=v end)
check(fl,"No Clip",UDim2.new(0,8,0,128),false,function(v) C.NoClip=v end)
check(fl,"Wall Climb",UDim2.new(0,8,0,154),false,function(v) C.WallClimb=v end)
check(fl,"Slide",UDim2.new(0,8,0,180),false,function(v) C.Slide=v end)
check(fl,"Fast Ladder",UDim2.new(0,8,0,206),false,function(v) C.FastLadder=v end)
check(fl,"Teleport",UDim2.new(0,8,0,232),false,function(v) C.Teleport=v end)

-- ===== VISUALS TAB =====
local vis=tab("Visuals")

local es=section(vis,"ESP",UDim2.new(0,0,0,0),UDim2.new(0,240,0,440))
check(es,"ESP Enabled",UDim2.new(0,8,0,36),false,function(v) C.ESP=v end)
check(es,"Box",UDim2.new(0,8,0,62),false,function(v) C.ESP_Box=v end)
check(es,"Name",UDim2.new(0,8,0,88),false,function(v) C.ESP_Name=v end)
check(es,"Health",UDim2.new(0,8,0,114),false,function(v) C.ESP_Health=v end)
check(es,"Distance",UDim2.new(0,8,0,140),false,function(v) C.ESP_Distance=v end)
check(es,"Tracer",UDim2.new(0,8,0,166),false,function(v) C.ESP_Tracer=v end)
check(es,"Team Check",UDim2.new(0,8,0,192),true,function(v) C.ESP_TeamCheck=v end)
check(es,"Skeleton",UDim2.new(0,8,0,218),false,function(v) C.ESP_Skeleton=v end)
check(es,"Head Dot",UDim2.new(0,8,0,244),false,function(v) C.ESP_HeadDot=v end)
check(es,"Visible Only",UDim2.new(0,8,0,270),false,function(v) C.ESP_VisibleOnly=v end)
slider(es,"Max Distance",1000,100,5000,UDim2.new(0,8,0,296),function(v) C.ESP_MaxDistance=v end)

local ch=section(vis,"Chams",UDim2.new(0,250,0,0),UDim2.new(0,240,0,440))
check(ch,"Chams Enabled",UDim2.new(0,8,0,36),false,function(v) C.ESP_Chams=v end)
slider(ch,"Transparency",50,0,100,UDim2.new(0,8,0,62),function(v) C.ESP_ChamsTransparency=v end)
colorpicker(ch,"Chams Color",Color3.fromRGB(255,0,0),UDim2.new(0,8,0,100),function(c) C.ESP_ChamsColor=c end)
colorpicker(ch,"Fill Color",Color3.fromRGB(255,255,255),UDim2.new(0,8,0,128),function(c) C.ESP_FillColor=c end)
colorpicker(ch,"Outline Color",Color3.fromRGB(0,0,0),UDim2.new(0,8,0,156),function(c) C.ESP_OutlineColor=c end)
check(ch,"XRay",UDim2.new(0,8,0,184),false,function(v) C.XRay=v end)
check(ch,"Wireframe",UDim2.new(0,8,0,210),false,function(v) C.Wireframe=v end)
check(ch,"Full Bright",UDim2.new(0,8,0,236),false,function(v) C.FullBright=v end)
check(ch,"No Fog",UDim2.new(0,8,0,262),false,function(v) C.NoFog=v end)
check(ch,"No Particles",UDim2.new(0,8,0,288),false,function(v) C.NoParticles=v end)
check(ch,"No Grass",UDim2.new(0,8,0,314),false,function(v) C.NoGrass=v end)
check(ch,"Skybox",UDim2.new(0,8,0,340),false,function(v) C.Skybox=v end)
check(ch,"Ambient",UDim2.new(0,8,0,366),false,function(v) C.Ambient=v end)
colorpicker(ch,"Ambient Color",Color3.fromRGB(128,128,128),UDim2.new(0,8,0,392),function(c) C.AmbientColor=c end)

local sc=section(vis,"Screen",UDim2.new(0,500,0,0),UDim2.new(0,240,0,440))
check(sc,"FOV Circle",UDim2.new(0,8,0,36),false,function(v) C.FOVCircle=v end)
colorpicker(sc,"FOV Color",Color3.fromRGB(0,255,100),UDim2.new(0,8,0,62),function(c) C.FOV_Color=c end)
check(sc,"Crosshair",UDim2.new(0,8,0,90),false,function(v) C.Crosshair=v end)
colorpicker(sc,"Crosshair Color",Color3.fromRGB(255,255,255),UDim2.new(0,8,0,116),function(c) C.Crosshair_Color=c end)
slider(sc,"Crosshair Size",10,2,50,UDim2.new(0,8,0,144),function(v) C.Crosshair_Size=v end)
check(sc,"Watermark",UDim2.new(0,8,0,180),true,function(v) C.Watermark=v end)
check(sc,"Clock Time",UDim2.new(0,8,0,206),false,function(v) C.ClockTime=v end)
slider(sc,"Clock Value",14,0,24,UDim2.new(0,8,0,232),function(v) C.ClockValue=v end)

-- ===== MISC TAB =====
local misc=tab("Misc")

local mi=section(misc,"Misc",UDim2.new(0,0,0,0),UDim2.new(0,240,0,440))
check(mi,"Anti AFK",UDim2.new(0,8,0,36),false,function(v) C.AntiAFK=v end)
check(mi,"Auto Respawn",UDim2.new(0,8,0,62),false,function(v) C.AutoRespawn=v end)
check(mi,"Auto Heal",UDim2.new(0,8,0,88),false,function(v) C.AutoHeal=v end)
check(mi,"God Mode",UDim2.new(0,8,0,114),false,function(v) C.GodMode=v end)
check(mi,"No Fall Damage",UDim2.new(0,8,0,140),false,function(v) C.NoFallDamage=v end)
check(mi,"Auto Collect",UDim2.new(0,8,0,166),false,function(v) C.AutoCollect=v end)
check(mi,"Auto Farm",UDim2.new(0,8,0,192),false,function(v) C.AutoFarm=v end)
check(mi,"Auto Kill",UDim2.new(0,8,0,218),false,function(v) C.AutoKill=v end)

local so=section(misc,"Social",UDim2.new(0,250,0,0),UDim2.new(0,240,0,440))
check(so,"Chat Spoofer",UDim2.new(0,8,0,36),false,function(v) C.ChatSpoofer=v end)
check(so,"Name Spoofer",UDim2.new(0,8,0,62),false,function(v) C.NameSpoofer=v end)
check(so,"Fake Chat",UDim2.new(0,8,0,88),false,function(v) C.FakeChat=v end)

local sv=section(misc,"Server",UDim2.new(0,500,0,0),UDim2.new(0,240,0,440))
button(sv,"Rejoin Server",UDim2.new(0,8,0,36),function()
  pcall(function() game:GetService("TeleportService"):Teleport(game.PlaceId, lp) end)
  log("Rejoining...", COL.yellow)
end)
button(sv,"Server Hop",UDim2.new(0,8,0,64),function()
  log("Server hop clicked (needs API)", COL.yellow)
end)
button(sv,"Copy Discord Link",UDim2.new(0,8,0,92),function()
  pcall(function()
    if setclipboard then setclipboard("https://discord.gg/NaswmCxrE") end
  end)
  log("Discord link copied", COL.green)
end)
check(sv,"Logs Enabled",UDim2.new(0,8,0,126),true,function(v) C.Logs=v end)
keybind(sv,"Menu Key",Enum.KeyCode.RightControl,UDim2.new(0,8,0,152),function(k) C.MenuKey=k end)
keybind(sv,"Toggle Keybind",Enum.KeyCode.RightShift,UDim2.new(0,8,0,178),function(k) C.Keybind=k end)
-- =========================================================
--  ЛОГИКА МОДУЛЕЙ
-- =========================================================

-- Получить персонажа игрока
local function getChar(plr)
  plr = plr or lp
  return plr.Character, plr.Character and plr.Character:FindFirstChildOfClass("Humanoid")
end

-- Проверка: команда / живой / не я
local function isValidTarget(plr)
  if plr == lp then return false end
  local char = plr.Character
  if not char then return false end
  local hum = char:FindFirstChildOfClass("Humanoid")
  if not hum or hum.Health <= 0 then return false end
  if C.SA_TeamCheck or C.AB_TeamCheck then
    if plr.Team and lp.Team and plr.Team == lp.Team then return false end
  end
  return true, char, hum
end

-- =========================================================
--  ANTI-AFK
-- =========================================================
task.spawn(function()
  local vu = game:GetService("VirtualUser")
  while task.wait(60) do
    if C.AntiAFK then
      pcall(function()
        vu:CaptureController()
        vu:ClickButton2(Vector2.new())
      end)
    end
  end
end)

-- =========================================================
--  SPEED / JUMP
-- =========================================================
RunService.Heartbeat:Connect(function()
  if C.SpeedHack then
    local _, hum = getChar()
    if hum then hum.WalkSpeed = C.Speed_Value end
  end
  if C.JumpPower then
    local _, hum = getChar()
    if hum then hum.JumpPower = C.Jump_Value end
  end
end)

-- =========================================================
--  INFINITE JUMP
-- =========================================================
UIS.JumpRequest:Connect(function()
  if C.InfiniteJump then
    local _, hum = getChar()
    if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
  end
end)

-- =========================================================
--  NO CLIP
-- =========================================================
RunService.Stepped:Connect(function()
  if C.NoClip then
    local char = getChar()
    if char then
      for _, p in ipairs(char:GetDescendants()) do
        if p:IsA("BasePart") then p.CanCollide = false end
      end
    end
  end
end)

-- =========================================================
--  FLY
-- =========================================================
local flyActive = false
local flyBV, flyBG, flyAttach

UIS.InputBegan:Connect(function(i, gpe)
  if gpe then return end
  if i.KeyCode == Enum.KeyCode.F and C.Fly_Mode == "Toggle" then
    C.Fly = not C.Fly
    log("Fly: "..tostring(C.Fly), C.Fly and COL.green or COL.red)
  end
end)

RunService.RenderStepped:Connect(function()
  local char, hum = getChar()
  local hrp = char and char:FindFirstChild("HumanoidRootPart")
  if not hrp then
    if flyBV then flyBV:Destroy() flyBV=nil end
    if flyBG then flyBG:Destroy() flyBG=nil end
    return
  end

  local shouldFly = C.Fly and (C.Fly_Mode == "Toggle" or UIS:IsKeyDown(Enum.KeyCode.F))

  if shouldFly and not flyBV then
    hum.PlatformStand = true
    flyBV = Instance.new("BodyVelocity")
    flyBV.MaxForce = Vector3.new(1e5,1e5,1e5)
    flyBV.Velocity = Vector3.zero
    flyBV.Parent = hrp
    flyBG = Instance.new("BodyGyro")
    flyBG.MaxForce = Vector3.new(1e5,1e5,1e5)
    flyBG.P = 1e4
    flyBG.CFrame = hrp.CFrame
    flyBG.Parent = hrp
  elseif not shouldFly and flyBV then
    flyBV:Destroy() flyBV = nil
    flyBG:Destroy() flyBG = nil
    if hum then hum.PlatformStand = false end
  end

  if shouldFly and flyBV then
    local cam = workspace.CurrentCamera
    local dir = Vector3.zero
    if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + cam.CFrame.LookVector end
    if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - cam.CFrame.LookVector end
    if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - cam.CFrame.RightVector end
    if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + cam.CFrame.RightVector end
    if UIS:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0,1,0) end
    if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir - Vector3.new(0,1,0) end
    flyBV.Velocity = dir.Magnitude > 0 and dir.Unit * C.Fly_Speed or Vector3.zero
    flyBG.CFrame = CFrame.new(hrp.Position, hrp.Position + cam.CFrame.LookVector)
  end
end)

-- =========================================================
--  FULL BRIGHT / NO FOG / AMBIENT / CLOCK
-- =========================================================
task.spawn(function()
  while task.wait(0.5) do
    if C.FullBright then
      Lighting.Brightness = 3
      Lighting.ClockTime = 14
      Lighting.FogEnd = 1e6
    end
    if C.NoFog then
      Lighting.FogEnd = 1e6
      Lighting.FogStart = 1e6
    end
    if C.Ambient then
      Lighting.Ambient = C.AmbientColor
      Lighting.OutdoorAmbient = C.AmbientColor
    end
    if C.ClockTime then
      Lighting.ClockTime = C.ClockValue
    end
  end
end)

-- =========================================================
--  NO PARTICLES / GRASS
-- =========================================================
task.spawn(function()
  while task.wait(1) do
    if C.NoParticles then
      for _, v in ipairs(WS:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") then
          v.Enabled = false
        end
      end
    end
    if C.NoGrass then
      for _, v in ipairs(WS:GetDescendants()) do
        if v:IsA("BasePart") and (v.Name:lower():find("grass")) then
          v.Transparency = 1
        end
      end
    end
  end
end)

-- =========================================================
--  ESP (Drawing)
-- =========================================================
local espDrawings = {}

local function clearESP()
  for _, d in pairs(espDrawings) do
    for _, obj in pairs(d) do
      pcall(function() obj:Remove() end)
    end
  end
  espDrawings = {}
end

RunService.RenderStepped:Connect(function()
  if not C.ESP then
    if next(espDrawings) then clearESP() end
    return
  end

  if not Drawing then return end

  local cam = workspace.CurrentCamera
  local alive = {}

  for _, plr in ipairs(Players:GetPlayers()) do
    local ok, char, hum = isValidTarget(plr)
    if ok and C.ESP_TeamCheck == false or (ok and not (plr.Team == lp.Team)) then
      local head = char:FindFirstChild("Head")
      local hrp = char:FindFirstChild("HumanoidRootPart")
      if head and hrp then
        local dist = (cam.CFrame.Position - hrp.Position).Magnitude
        if dist <= C.ESP_MaxDistance then
          local sp, onScreen = cam:WorldToViewportPoint(hrp.Position)
          if onScreen then
            local key = plr.Name
            alive[key] = true
            if not espDrawings[key] then espDrawings[key] = {} end
            local d = espDrawings[key]

            if C.ESP_Box then
              if not d.box then
                d.box = Drawing.new("Square")
                d.box.Thickness = 1
                d.box.Filled = false
              end
              local topSp = cam:WorldToViewportPoint(head.Position + Vector3.new(0,1,0))
              local botSp = cam:WorldToViewportPoint(hrp.Position - Vector3.new(0,3,0))
              local h = math.abs(botSp.Y - topSp.Y)
              local w = h * 0.6
              d.box.Size = Vector2.new(w, h)
              d.box.Position = Vector2.new(sp.X - w/2, topSp.Y)
              d.box.Color = C.ESP_OutlineColor
              d.box.Visible = true
            end

            if C.ESP_Name then
              if not d.name then
                d.name = Drawing.new("Text")
                d.name.Size = 14
                d.name.Center = true
                d.name.Outline = true
              end
              d.name.Text = plr.Name
              d.name.Position = Vector2.new(sp.X, sp.Y - 30)
              d.name.Color = Color3.fromRGB(255,255,255)
              d.name.Visible = true
            end

            if C.ESP_Health then
              if not d.hp then
                d.hp = Drawing.new("Text")
                d.hp.Size = 12
                d.hp.Center = true
                d.hp.Outline = true
              end
              d.hp.Text = math.floor(hum.Health).." HP"
              d.hp.Position = Vector2.new(sp.X, sp.Y - 15)
              d.hp.Color = Color3.fromRGB(0,255,0)
              d.hp.Visible = true
            end

            if C.ESP_Distance then
              if not d.dist then
                d.dist = Drawing.new("Text")
                d.dist.Size = 12
                d.dist.Center = true
                d.dist.Outline = true
              end
              d.dist.Text = math.floor(dist).."m"
              d.dist.Position = Vector2.new(sp.X, sp.Y + 10)
              d.dist.Color = Color3.fromRGB(255,255,255)
              d.dist.Visible = true
            end
          end
        end
      end
    end
  end

  for name, d in pairs(espDrawings) do
    if not alive[name] then
      for _, obj in pairs(d) do
        pcall(function() obj:Remove() end)
      end
      espDrawings[name] = nil
    end
  end
end)

-- =========================================================
--  SILENT AIM (camera-based, безопасный)
-- =========================================================
local aimTarget = nil

local function getClosestTarget(fov, part)
  local cam = workspace.CurrentCamera
  local center = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)
  local best, bestDist = nil, fov
  for _, plr in ipairs(Players:GetPlayers()) do
    local ok, char, hum = isValidTarget(plr)
    if ok then
      local p = char:FindFirstChild(part)
      if p then
        local sp, onScreen = cam:WorldToViewportPoint(p.Position)
        if onScreen then
          local d = (Vector2.new(sp.X, sp.Y) - center).Magnitude
          if d < bestDist then bestDist = d; best = p end
        end
      end
    end
  end
  return best
end

RunService.RenderStepped:Connect(function()
  if C.SilentAim then
    aimTarget = getClosestTarget(C.SA_FOV, C.SA_Hitbox)
    if aimTarget then
      local cam = workspace.CurrentCamera
      cam.CFrame = CFrame.new(cam.CFrame.Position, aimTarget.Position)
    end
  end
end)

-- =========================================================
--  AIMBOT (по кнопке)
-- =========================================================
RunService.RenderStepped:Connect(function()
  if C.Aimbot and UIS:IsKeyDown(C.AB_Keybind) then
    local t = getClosestTarget(C.AB_FOV, C.AB_Part)
    if t then
      local cam = workspace.CurrentCamera
      local cur = cam.CFrame
      local goal = CFrame.new(cur.Position, t.Position)
      cam.CFrame = cur:Lerp(goal, 1 - C.AB_Smooth)
    end
  end
end)

-- =========================================================
--  FOV CIRCLE
-- =========================================================
local fovCircle = Instance.new("Frame")
fovCircle.Size = UDim2.new(0, C.SA_FOV*2, 0, C.SA_FOV*2)
fovCircle.Position = UDim2.new(0.5, -C.SA_FOV, 0.5, -C.SA_FOV)
fovCircle.BackgroundTransparency = 1
fovCircle.BorderSizePixel = 0
fovCircle.Visible = false
fovCircle.Parent = screen
Instance.new("UICorner", fovCircle).CornerRadius = UDim.new(1, 0)
local fovStroke = Instance.new("UIStroke", fovCircle)
fovStroke.Color = C.FOV_Color
fovStroke.Thickness = 1
fovStroke.Transparency = 0.5

RunService.RenderStepped:Connect(function()
  fovCircle.Size = UDim2.new(0, C.SA_FOV*2, 0, C.SA_FOV*2)
  fovCircle.Position = UDim2.new(0.5, -C.SA_FOV, 0.5, -C.SA_FOV)
  fovStroke.Color = C.FOV_Color
  fovCircle.Visible = C.FOVCircle
end)

-- =========================================================
--  CROSSHAIR
-- =========================================================
local crosshair = Instance.new("Frame")
crosshair.Size = UDim2.new(0, C.Crosshair_Size, 0, 2)
crosshair.Position = UDim2.new(0.5, -C.Crosshair_Size/2, 0.5, -1)
crosshair.BackgroundColor3 = C.Crosshair_Color
crosshair.BorderSizePixel = 0
crosshair.Visible = false
crosshair.Parent = screen

local crosshair2 = Instance.new("Frame")
crosshair2.Size = UDim2.new(0, 2, 0, C.Crosshair_Size)
crosshair2.Position = UDim2.new(0.5, -1, 0.5, -C.Crosshair_Size/2)
crosshair2.BackgroundColor3 = C.Crosshair_Color
crosshair2.BorderSizePixel = 0
crosshair2.Visible = false
crosshair2.Parent = screen

RunService.RenderStepped:Connect(function()
  crosshair.Size = UDim2.new(0, C.Crosshair_Size, 0, 2)
  crosshair.Position = UDim2.new(0.5, -C.Crosshair_Size/2, 0.5, -1)
  crosshair2.Size = UDim2.new(0, 2, 0, C.Crosshair_Size)
  crosshair2.Position = UDim2.new(0.5, -1, 0.5, -C.Crosshair_Size/2)
  crosshair.BackgroundColor3 = C.Crosshair_Color
  crosshair2.BackgroundColor3 = C.Crosshair_Color
  crosshair.Visible = C.Crosshair
  crosshair2.Visible = C.Crosshair
end)

-- =========================================================
--  WATERMARK
-- =========================================================
local wm = Instance.new("TextLabel")
wm.Size = UDim2.new(0, 260, 0, 28)
wm.Position = UDim2.new(0, 10, 1, -38)
wm.BackgroundColor3 = COL.bg
wm.BackgroundTransparency = 0.3
wm.TextColor3 = COL.accent
wm.Font = FONT_B
wm.TextSize = 13
wm.Text = "Phantom | HvH"
wm.Visible = false
wm.Parent = screen
Instance.new("UICorner", wm).CornerRadius = UDim.new(0, 4)
local ws1 = Instance.new("UIStroke", wm)
ws1.Color = COL.accent
ws1.Thickness = 1
local wmLayout = Instance.new("UIListLayout", wm)
wmLayout.FillDirection = Enum.FillDirection.Horizontal
wmLayout.Padding = UDim.new(0, 4)
wmLayout.VerticalAlignment = Enum.VerticalAlignment.Center

task.spawn(function()
  while task.wait(1) do
    if C.Watermark then
      wm.Visible = true
      wm.Text = string.format("Phantom | HvH | Players: %d | Ping: %dms | FPS: ~%d",
        #Players:GetPlayers(),
        math.floor(lp:GetNetworkPing()*1000),
        math.floor(1/RunService.RenderStepped:Wait() or 60))
    else
      wm.Visible = false
    end
  end
end)

-- =========================================================
--  MENU KEYBIND
-- =========================================================
UIS.InputBegan:Connect(function(i, gpe)
  if gpe then return end
  if i.KeyCode == C.MenuKey then
    screen.Enabled = not screen.Enabled
  end
end)

-- =========================================================
--  ИНИЦИАЛИЗАЦИЯ
-- =========================================================
pages["Combat"].Visible = true
buttons["Combat"].TextColor3 = COL.accent

log("Phantom HvH Loaded (IDLE)", COL.green)
log("Menu: "..C.MenuKey.Name, COL.textDim)
log("Discord: discord.gg/NaswmCxrE", COL.accent2)
