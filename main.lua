function somar()
   print('Somar -> Digite os valores...')
   local x = 0
   local opcoes = {} 
   local texto = ''
   local valorTotal = 0
   
   for opcao in io.lines() do
      if opcao == '' then break end
      texto = texto .. opcao .. ' + '
      valorTotal = valorTotal + tonumber(opcao)
      x = x + 1
   end

   texto = string.sub(texto, 1, -4)

   print(texto .. ' = ' .. valorTotal)
   io.read()
end

function multiplicar()
   print('Multiplicar -> Digite os valores...')
   local x = 0
   local opcoes = {} 
   local texto = ''
   local valorTotal = 0
   
   for opcao in io.lines() do
      if opcao == '' then break end
      texto = texto .. opcao .. ' * '

      if valorTotal == 0 then valorTotal = tonumber(opcao)
      else valorTotal = valorTotal * tonumber(opcao) 
      end
      
      x = x + 1
   end

   texto = string.sub(texto, 1, -4)

   print(texto .. ' = ' .. valorTotal)
   io.read()

end

function dividir()
   print('Dividir -> Digite os valores...')
   local x = 0
   local opcoes = {} 
   local texto = ''
   local valorTotal = 0
   
   for opcao in io.lines() do
      if opcao == '' then break end
      texto = texto .. opcao .. ' / '

      if valorTotal == 0 then valorTotal = tonumber(opcao)
      else valorTotal = valorTotal / tonumber(opcao) 
      end
      
      x = x + 1
   end

   texto = string.sub(texto, 1, -4)

   print(texto .. ' = ' .. valorTotal)
   io.read()

end

function iniciar_comando(opcao)
   if opcao == 1 then somar() end
   if opcao == 2 then multiplicar() end
   if opcao == 3 then dividir() end
end

function mostrar_menu()
   os.execute('clear')
   
   local menu = 
   '1 - Somar\n' .. 
   '2 - Multiplicar\n' .. 
   '3 - Dividir\n' ..
   '4 - Texto Grande\n'
   
   print(menu)
   print("Selecione as opções...")

   local opcoes = {}
   local x = 0

   for opcao in io.lines() do
      if opcao == '' then break end
      opcoes[x] = opcao
      x = x + 1
   end

   x = 0
   while opcoes[x] do
      iniciar_comando(tonumber(opcoes[x]))
      x = x + 1
   end

   mostrar_menu()
end

mostrar_menu()

