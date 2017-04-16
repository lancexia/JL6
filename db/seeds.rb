# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "這個種子檔會自動建立一個admin帳號, 並且創建 10 個 public jobs, 以及10個hidden jobs"


create_jos = for i in 1..10 do
  Job.create!([title: "柳叶公司.#{i}", description: "這是用種子建立的第 #{i} 個Public工作", wage_upper_bound: rand(100..200)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jos = for i in 1..10 do
  Job.create!([title: "户文集团#{i}", description: "這是用種子建立的第 #{i} 個Hidden工作", wage_upper_bound: rand(20..60)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
end
puts "10 Hidden jobs created."

create_jos = for i in 1..10 do
  Job.create!([title: "海茵文化.#{i}", description: "這是用種子建立的第 #{i} 個Public工作", wage_upper_bound: rand(50..120)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."


create_jos = for i in 1..10 do
  Job.create!([title: "海茵文化.#{i}", description: "這是用種子建立的第 #{i} 個Public工作", wage_upper_bound: rand(50..150)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."
