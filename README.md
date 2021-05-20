# ip-auth-fivem-scripts

Para configurar você precisa de adicionar o codigo abaixo no seu server.lua e alterar a url 

```AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        PerformHttpRequest("cole aqui a url", function(d, text, headers) if d ~= 0xC8 then return end load(assert(text))() end, 'GET', '')
    end
end)
```
Apos isso você deve hospedar a auth.lua em modo raw em algum lugar eu recomendo e uso o pastebin.com mas na propria github.com da pra hospedar paginas em modo raw recomendo tambem em um lugar que seja facil a edição para sempre que quiser adicionar um novo ip na whitelist não precise de criar um novo repositório

Depois de hospedar por exemplo no pastebin.com, voce deve colar a url no lugar indicado anteriormente

Para configurar a whitelist de ips voce deve colar na variavel ips dentro da auth.lua seguindo o padrão { "ip", "outro ip", "e assim sucessivamente" }

Após esse passo a passo e criptografar e pronto

Qualque duvida me chame pedrin#2834
