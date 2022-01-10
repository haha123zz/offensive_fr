local AntiShield = {}
AntiShield.On = false 

function AntiShield:Toggle(val)
    AntiShield.On = val or not AntiShield.On
end