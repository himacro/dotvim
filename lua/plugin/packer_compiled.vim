" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\pma\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\pma\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\pma\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\pma\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\pma\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n·\1\0\0\a\0\n\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0015\0\3\0006\1\4\0'\3\5\0'\4\6\0'\5\a\0\18\6\0\0B\1\5\0016\1\4\0'\3\b\0'\4\6\0'\5\t\0\18\6\0\0B\1\5\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bmap\1\0\2\vsilent\2\fnoremap\2\nsetup\nFTerm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\FTerm.nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim"
  },
  ["comfortable-motion.vim"] = {
    config = { "\27LJ\2\n¨\2\0\0\a\0\f\0\0206\0\0\0'\1\2\0=\1\1\0006\0\0\0'\1\4\0=\1\3\0005\0\5\0006\1\6\0'\3\a\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\6\0'\3\a\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\1K\0\1\0,:call comfortable_motion#flick(-40)<CR>\20<ScrollWheelUp>+:call comfortable_motion#flick(40)<CR>\22<ScrollWheelDown>\6n\bmap\1\0\2\vsilent\2\fnoremap\2\6k%comfortable_motion_scroll_up_key\6j'comfortable_motion_scroll_down_key\6g\0" },
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\comfortable-motion.vim"
  },
  ["completion-nvim"] = {
    config = { "\27LJ\2\nÅ\2\0\0\3\0\v\0\0196\0\0\0005\1\2\0=\1\1\0006\0\0\0006\1\0\0009\1\3\1'\2\4\0 \1\2\1=\1\3\0006\0\5\0)\1\1\0=\1\6\0006\0\5\0'\1\b\0=\1\a\0006\0\5\0005\1\n\0=\1\t\0K\0\1\0\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list\ralphabet\23completion_sorting#completion_matching_smart_case\6g\6c\14shortmess\1\3\0\0\fmenuone\rnoinsert\16completeopt\bopt\0" },
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\completion-nvim"
  },
  ["golden-ratio"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\golden-ratio"
  },
  kommentary = {
    config = { "\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\26use_extended_mappings\22kommentary.config\frequire\0" },
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kommentary"
  },
  ["nlua.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\15setup_nlua\blsp\frequire\0" },
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nlua.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nå\1\0\0\4\0\b\0\0176\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\3\4\0B\1\2\2\15\0\1\0X\2\3Ä9\1\5\0B\1\1\1X\1\2Ä9\1\6\0B\1\1\0019\1\a\0B\1\1\1K\0\1\0\18setup_pyright\15setup_ccls\17setup_clangd\fwindows\bhas\afn\blsp\frequire\0" },
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26 colorscheme onedark \bcmd\0" },
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "C:\\Users\\pma\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-obsession"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\26use_extended_mappings\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: nlua.nvim
time([[Config for nlua.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\15setup_nlua\blsp\frequire\0", "config", "nlua.nvim")
time([[Config for nlua.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26 colorscheme onedark \bcmd\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: comfortable-motion.vim
time([[Config for comfortable-motion.vim]], true)
try_loadstring("\27LJ\2\n¨\2\0\0\a\0\f\0\0206\0\0\0'\1\2\0=\1\1\0006\0\0\0'\1\4\0=\1\3\0005\0\5\0006\1\6\0'\3\a\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\6\0'\3\a\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\1K\0\1\0,:call comfortable_motion#flick(-40)<CR>\20<ScrollWheelUp>+:call comfortable_motion#flick(40)<CR>\22<ScrollWheelDown>\6n\bmap\1\0\2\vsilent\2\fnoremap\2\6k%comfortable_motion_scroll_up_key\6j'comfortable_motion_scroll_down_key\6g\0", "config", "comfortable-motion.vim")
time([[Config for comfortable-motion.vim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nå\1\0\0\4\0\b\0\0176\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\3\4\0B\1\2\2\15\0\1\0X\2\3Ä9\1\5\0B\1\1\1X\1\2Ä9\1\6\0B\1\1\0019\1\a\0B\1\1\1K\0\1\0\18setup_pyright\15setup_ccls\17setup_clangd\fwindows\bhas\afn\blsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: completion-nvim
time([[Config for completion-nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\3\0\v\0\0196\0\0\0005\1\2\0=\1\1\0006\0\0\0006\1\0\0009\1\3\1'\2\4\0 \1\2\1=\1\3\0006\0\5\0)\1\1\0=\1\6\0006\0\5\0'\1\b\0=\1\a\0006\0\5\0005\1\n\0=\1\t\0K\0\1\0\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list\ralphabet\23completion_sorting#completion_matching_smart_case\6g\6c\14shortmess\1\3\0\0\fmenuone\rnoinsert\16completeopt\bopt\0", "config", "completion-nvim")
time([[Config for completion-nvim]], false)
-- Conditional loads
time("Condition for { 'FTerm.nvim' }", true)
if
try_loadstring("\27LJ\2\n?\0\0\3\0\3\1\n6\0\0\0009\0\1\0'\2\2\0B\0\2\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\fwindows\bhas\afn\2\0", "condition", '{ "FTerm.nvim" }')
then
time("Condition for { 'FTerm.nvim' }", false)
time([[packadd for FTerm.nvim]], true)
		vim.cmd [[packadd FTerm.nvim]]
	time([[packadd for FTerm.nvim]], false)
	-- Config for: FTerm.nvim
	time([[Config for FTerm.nvim]], true)
	try_loadstring("\27LJ\2\n·\1\0\0\a\0\n\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0015\0\3\0006\1\4\0'\3\5\0'\4\6\0'\5\a\0\18\6\0\0B\1\5\0016\1\4\0'\3\b\0'\4\6\0'\5\t\0\18\6\0\0B\1\5\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bmap\1\0\2\vsilent\2\fnoremap\2\nsetup\nFTerm\frequire\0", "config", "FTerm.nvim")
	time([[Config for FTerm.nvim]], false)
else
time("Condition for { 'FTerm.nvim' }", false)
end
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
