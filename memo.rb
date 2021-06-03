require "csv"
while true
puts "1(新規でメモを作成) 2(既存のメモ編集する) 3(終了する)"
memo_type = gets.to_i
if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください。" 
  file_name = gets.chomp
  puts "メモしたい内容を入力してください。"
  memo = gets.chomp
  puts "もし終了するなら3を入力してください。"
  CSV.open("#{file_name}.csv","w") do |write|
    write << ["#{memo}"]
  end
elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  puts "追記したい内容を入力してください。"
  memo = gets.chomp
  puts "もし終了するなら3を入力してください。"
  CSV.open("#{file_name}.csv","a") do |write|
    write << ["#{memo}"]
  end
elsif memo_type == 3
  break
else 
  puts "1または2または3を入力してください。"
end
end