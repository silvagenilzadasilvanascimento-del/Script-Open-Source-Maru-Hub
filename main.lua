local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Maru Hub Clone | Open Source",
   LoadingTitle = "Carregando Interface...",
   LoadingSubtitle = "por SeuNome",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MaruHubConfigs",
      FileName = "Config"
   }
})

-- Criando as Abas baseadas na imagem
local GeneralTab = Window:CreateTab("General", 4483345998)
local FarmTab = Window:CreateTab("Farm", 4483345998)
local ItemsTab = Window:CreateTab("Items", 4483345998)
local CombatTab = Window:CreateTab("Combat", 4483345998)

-- Adicionando os elementos na Aba Farm (como no print)
FarmTab:CreateSection("Auto Farm")

FarmTab:CreateToggle({
   Name = "Auto Complete Trial",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      -- Insira aqui a lógica do Auto Trial
      print("Auto Trial:", Value)
   end,
})

FarmTab:CreateToggle({
   Name = "Enabled Kill Players",
   CurrentValue = false,
   Flag = "Toggle2",
   Callback = function(Value)
      print("Kill Players:", Value)
   end,
})

FarmTab:CreateSlider({
   Name = "Speed Boat",
   Range = {0, 500},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 250,
   Flag = "Slider1",
   Callback = function(Value)
      print("Velocidade do Barco:", Value)
   end,
})
