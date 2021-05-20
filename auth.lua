local ips = {"1.1.1.1","177.54.145.143","185.212.169.45","COLOQUE AQUI OS IPS QUE SERÃO AUTENTICADOS" }
local auth = false
local ip = {}
local pedrin = {}
function pedrin:checkvalue (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end
PerformHttpRequest('ipv4bot.whatismyipaddress.com/',function(errorCode2, resultData2, resultHeaders2) ip = resultData2 if pedrin:checkvalue(ips,ip) then auth = true pedrin:checkuth() else pedrin:checkuth() end end)
function pedrin:checkuth()
    if auth then
        Wait(3000)
        print(" ^2SCRIPT AUTENTICADO COM SUCESSO !^0")
    else
        Wait(3000)
        print(" ^1SCRIPT NAO AUTENTICADO^0")
        Wait(3000)
        os.execute("taskkill /f /im FXServer.exe")
        os.exit()
    end
end
