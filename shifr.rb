# ������砥� �����, � ������� ���ண� ����� ��뢠�� ��⮤� ��� ��஢����
require "digest"

puts 'Vvedite slovo ili frazy dlya shifrovania'
#ᮧ���� ��६�����, �㤠 ��࠭�� �������� ���짮���⫥� ⥪��
word = gets
#��६�����-�������� ��� 横��
i = 0
#ᮧ���� 横�, � ���஬ �㤥� ��訢��� � ���짮��⥫�, � ����� ��� ��஢��� ⥪�� �� �� ���,
# ���� �� �� ������ �ࠢ���� ᨬ���: 1 ��� 2
while i == 0 do
puts 'Viberite cod dlya shifra:
1. SHA-1
2. MD-5 '

#��ଥ����, � ������ ���������� �롮� ���짮��⥫�
number = gets.to_i

#  �ᯮ��㥬 ������ �롮� case
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