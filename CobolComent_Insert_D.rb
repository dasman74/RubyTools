#COBOL��INSERT�R�����g�c�[��
#�ݒ蒆�́uI101021�v�͍폜�{���t
puts "��Insert�R�����gStart��"
open("file.txt") {|file|
  while listData = file.gets
#	listData = "*" * 7 + listData[7, 100]
        if listData[0,1] == "*" or listData[6,1] === "*" then
		puts listData.sub(/[I|D]\d\d\d\d\d\d/, '')
	elsif	listData[72,1] === "I" or listData[72,1] === "D"
		puts listData.sub(/[I|D]\d\d\d\d\d\d/, '')
	else
		comentLength = 72 - listData.chomp.split(//s).length.to_i
		puts listData.chomp + " " * comentLength + "I101206"
	end

  end
}
puts "��Insert�R����END��"

