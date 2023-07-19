Config = {};

Config.IdCardSettings = {
   closeKey = 'Backspace',
   autoClose = {
      status = true, -- or true
      time = 5000
   }
};

Config.Licenses = {
   ['id_card'] = {
      header = 'CĂN CƯỚC',
      background = '#ebf7fd',
      prop = 'prop_franklin_dl'
   },
   ['driver_license'] = {
      header = 'BẰNG LÁI',
      background = '#febbbb',
      prop = 'prop_franklin_dl',
   },
   ['weaponlicense'] = {
      header = 'BẰNG VŨ KHÍ',
      background = '#c7ffe5',
      prop = 'prop_franklin_dl',
   },
   ['lawyerpass'] = {
      header = 'THẺ LUẬT SƯ',
      background = '#f9c491',
      prop = 'prop_cs_r_business_card'
   },
   ['copbadge'] = {
      header = 'THẺ NGÀNH',
      background = '#6c8ac6ff',
      prop = 'prop_cop_badge',
   },
}
