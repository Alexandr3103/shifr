# подключаем модуль, с помощью которого можно вызывать методы для шифрования
require "digest"

puts 'Vvedite slovo ili frazy dlya shifrovania'
#создаем переменную, куда сохраним введенные пользоваетлем текст
word = gets
#переменная-индикатор для цикла
i = 0
#создаем цикл, в котором будем спрашивать у пользователя, в каком шифре шифровать текст до тех пор,
# пока он не введет правильный символ: 1 или 2
while i == 0 do
puts 'Viberite cod dlya shifra:
1. SHA-1
2. MD-5 '

#перменная, в которую запоминаем выбор пользователя
number = gets.to_i

#  используем оператор выбора case
  case number
    when 1
      puts Digest::SHA1.hexdigest(word)
      i = 1
    when 2
      puts Digest::MD5.hexdigest(word)
      i = 1
    else
      puts 'Vi vveli ne to, chto nyzno. Vvedite 1 ili 2'
  end

end