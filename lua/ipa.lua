-- Initialize global variable
vim.g.IPAOn = 0

-- ToggleIPA function
ToggleIPA = function()
  if vim.g.IPAOn == 0 then
    IPA()
  else
    IPAOff()
  end
end

-- IPA function
IPA = function()
  print('IPA macros: On')
  vim.g.IPAOn = 1

  -- Mapping function to reduce redundancy
  local function imap(lhs, rhs)
    vim.api.nvim_set_keymap('i', lhs, rhs, {})
  end

  -- IPA mappings
  imap(',nn', 'ɲ̊')
  imap(',gn', 'ɲ')
  imap(',ng', 'ŋ')
  imap(",'", 'ʔ')
  imap(',sh', 'ʃ')
  imap(',zh', 'ʒ')
  imap(',xi', 'ɕ')
  imap(',zi', 'ʑ')
  imap(',ph', 'ɸ')
  imap(',bh', 'β')
  imap(',th', 'θ')
  imap(',dh', 'ð')
  imap(',cc', 'ç')
  imap(',jj', 'ʝ')
  imap(',gh', 'ɣ')
  imap(',xx', 'χ')
  imap(',fr', 'ʁ')
  imap(',HH', 'ħ')
  imap(',hh', 'ɦ')
  imap(',vv', 'ʋ')
  imap(',er', 'ɹ')
  imap(',fl', 'ɾ')
  imap(',bb', 'ʙ')
  imap(',ih', 'ɨ')
  imap(',ii', 'ɪ')
  imap(',eu', 'ɯ̽')
  imap(',uu', 'ʊ')
  imap(',uh', 'ə')
  imap(',eh', 'ɛ')
  imap(',oe', 'œ')
  imap(',au', 'ɔ')
  imap(',ae', 'æ')
  imap(',aa', 'ɐ')
  imap(',OE', 'ɶ')
  imap(',ah', 'ɑ')
  imap(',ba', 'ɒ')
  -- newly implemented
  imap(',b.', 'b̪')
  imap(',t.', 't̼')
  imap(',d.', 'd̼')
  imap(',tt', 'ʈ')
  imap(',dd', 'ɖ')
  imap(',gj', 'ɟ')
  imap(',gg', 'ɡ')
  imap(',gG', 'ɢ')
  imap(',gq', 'ʡ')
  imap(',shh', 'ʂ')
  imap(',zhh', 'ʐ')
  imap(',th.', 'θ̼')
  imap(',dh.', 'ð̼')
  imap(',th-', 'θ̠')
  imap(',dh-', 'ð̠')
  imap(',rh-', 'ɹ̠̊')
  imap(',rh', 'ɹ̠')
  imap(',rr', 'ɻ')
  imap(',gq', 'ʕ')
  imap(',qq', 'ʢ')
  imap(',vv-', 'ʋ̥')
  imap(',rr-', 'ɹ̥')
  imap(',rrr', 'ɻ̊')
  imap(',rr', 'ɻ')
  imap(',j-', 'j̊')
  imap(',ww-', 'ɰ̊')
  imap(',ww', 'ɰ')
  imap(',q-', 'ʔ̞')
  imap(',vv+', 'ⱱ̟')
  imap(',vv', 'ⱱ')
  imap(',r.', 'ɾ̼')
  imap(',r-', 'ɾ̥')
  imap(',rr.', 'ɽ̊')
  imap(',rr', 'ɽ')
  imap(',gG.', 'ɢ̆')
  imap(',gq.', 'ʡ̮')
  imap(',bb-', 'ʙ̥')
  imap(',r.', 'r̼')
  imap(',r-', 'r̥')
  imap(',rr.', 'ɽ̊')
  imap(',rr', 'ɽ')
  imap(',RR-', 'ʀ̥')
  imap(',RR', 'ʀ')
  imap(',HH', 'ʜ')
  imap(',QQ', 'ʢ')
  imap(',ll-', 'ɬ')
  imap(',ll.', 'ɮ')
  imap(',lll-', 'ɭ̊')
  imap(',yy-', 'ʎ̥')
  imap(',yy.', 'ʎ̝')
  imap(',LL.', 'ʟ̝̊')
  imap(',LL', 'ʟ̝')
  imap(',l-', 'l̥')
  imap(',ll-', 'ɭ̊')
  imap(',ll', 'ɭ')
  imap(',yy-', 'ʎ̥')
  imap(',yy', 'ʎ')
  imap(',LL-', 'ʟ̥')
  imap(',LL', 'ʟ')
  imap(',LL-', 'ʟ̠')
  imap(',rl', 'ɺ')
  imap(',rl.', 'ɺ̢')
  imap(',yy.', 'ʎ̮')
  imap(',LL.', 'ʟ̆')
  imap(',y.', 'ʉ')
  imap(',w.', 'ɯ')
  imap(',y-', 'ʏ')
  imap(',ii.', 'ɪ̈')
  imap(',uu.', 'ʊ̈')
  imap(',o.', 'ø')
  imap(',e.', 'ɘ')
  imap(',o-', 'ɵ')
  imap(',oo', 'ɤ')
  imap(',e-', 'e̞')
  imap(',o-', 'ø̞')
  imap(',o--', 'ɵ̞')
  imap(',oo-', 'ɤ̞')
  imap(',oo', 'o̞')
  imap(',ee', 'ɜ')
  imap(',oo.', 'ɞ')
  imap(',v', 'ʌ')
  imap(',oo--', 'ɞ̞')
  imap(',a.', 'ä')
  imap(',aa.', 'ɒ̈')
  imap(',m-', 'm̥')
  imap(',mf', 'ɱ')
  imap(',n.', 'n̼')
  imap(',n-', 'n̥')
  imap(',nn-', 'ɳ̊')
  imap(',nn', 'ɳ')
  imap(',ng-', 'ŋ̊')
  imap(',NG', 'ɴ')
  imap(',p.', 'p̪')
end


-- IPAOff function
IPAOff = function()
  print('IPA macros: Off')
  vim.g.IPAOn = 0

  -- Unmapping function to reduce redundancy
  local function iunmap(key)
    vim.api.nvim_del_keymap('i', key)
  end

  -- IPA unmappings
  iunmap(',nn')
  iunmap(',gn')
  iunmap(',ng')
  iunmap(",'")
  iunmap(',sh')
  iunmap(',zh')
  iunmap(',xi')
  iunmap(',zi')
  iunmap(',ph')
  iunmap(',bh')
  iunmap(',th')
  iunmap(',dh')
  iunmap(',cc')
  iunmap(',jj')
  iunmap(',gh')
  iunmap(',xx')
  iunmap(',fr')
  iunmap(',HH')
  iunmap(',hh')
  iunmap(',vv')
  iunmap(',er')
  iunmap(',fl')
  iunmap(',bb')
  iunmap(',ih')
  iunmap(',ii')
  iunmap(',eu')
  iunmap(',uu')
  iunmap(',uh')
  iunmap(',eh')
  iunmap(',oe')
  iunmap(',au')
  iunmap(',ae')
  iunmap(',aa')
  iunmap(',OE')
  iunmap(',ah')
  iunmap(',ba')
  --newly implemented
  iunmap(',b.')
  iunmap(',t.')
  iunmap(',d.')
  iunmap(',tt')
  iunmap(',dd')
  iunmap(',gj')
  iunmap(',gg')
  iunmap(',gG')
  iunmap(',gq')
  iunmap(',shh')
  iunmap(',zhh')
  iunmap(',th.')
  iunmap(',dh.')
  iunmap(',th-')
  iunmap(',dh-')
  iunmap(',rh-')
  iunmap(',rh')
  iunmap(',rr')
  iunmap(',gq')
  iunmap(',qq')
  iunmap(',vv-')
  iunmap(',rr-')
  iunmap(',rrr')
  iunmap(',rr')
  iunmap(',j-')
  iunmap(',ww-')
  iunmap(',ww')
  iunmap(',q-')
  iunmap(',vv+')
  iunmap(',vv')
  iunmap(',r.')
  iunmap(',r-')
  iunmap(',rr.')
  iunmap(',rr')
  iunmap(',gG.')
  iunmap(',gq.')
  iunmap(',bb-')
  iunmap(',r.')
  iunmap(',r-')
  iunmap(',rr.')
  iunmap(',rr')
  iunmap(',RR-')
  iunmap(',RR')
  iunmap(',HH')
  iunmap(',QQ')
  iunmap(',ll-')
  iunmap(',ll.')
  iunmap(',lll-')
  iunmap(',yy-')
  iunmap(',yy.')
  iunmap(',LL.')
  iunmap(',LL')
  iunmap(',l-')
  iunmap(',ll-')
  iunmap(',ll')
  iunmap(',yy-')
  iunmap(',yy')
  iunmap(',LL-')
  iunmap(',LL')
  iunmap(',LL-')
  iunmap(',rl')
  iunmap(',rl.')
  iunmap(',yy.')
  iunmap(',LL.')
  iunmap(',y.')
  iunmap(',w.')
  iunmap(',y-')
  iunmap(',ii.')
  iunmap(',uu.')
  iunmap(',o.')
  iunmap(',e.')
  iunmap(',o-')
  iunmap(',oo')
  iunmap(',e-')
  iunmap(',o-')
  iunmap(',o--')
  iunmap(',oo-')
  iunmap(',oo')
  iunmap(',ee')
  iunmap(',oo.')
  iunmap(',oo--')
  iunmap(',a.')
  iunmap(',aa.')
  iunmap(',m-')
  iunmap(',mf')
  iunmap(',n.')
  iunmap(',n-')
  iunmap(',nn-')
  iunmap(',nn')
  iunmap(',ng-')
  iunmap(',NG')
  iunmap(',p.')
end
