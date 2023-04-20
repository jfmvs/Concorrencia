vida_pikachu = 800
vida_raichu = 1000
moveset = {}
for i = 1,10 do
    moveset[i] = {ataque = "Choque do trovão", dano = 50}
end
for i = 11,15 do
    moveset[i] = {ataque = "Calda de ferro", dano = 100}
end
for i = 16,18 do
    moveset[i] = {ataque = "Investida trovão", dano = 150}
end
for i = 19,20 do
    moveset[i] = {ataque = "Trovão", dano = 200}
end

function batalha()
    while true do
        atacou = math.random(1, 20)
        vida_pikachu = vida_pikachu - moveset[atacou].dano
        print('Raichu atacou!\n',moveset[atacou].ataque)
        coroutine.yield()
        atacou = math.random(1, 20)
        vida_raichu = vida_raichu - moveset[atacou].dano
        print('Pikachu atacou!\n',moveset[atacou].ataque)
        coroutine.yield()
    end
end
battle = coroutine.create(batalha)
while (vida_pikachu > 0) and (vida_raichu > 0) do
    print('Pikachu hp:',vida_pikachu,'\nRaichu hp:',vida_raichu)
    coroutine.resume(battle)
end
if vida_raichu > 0 then
    print('Raichu venceu!')
else
    print('Pikachu venceu!')
end




