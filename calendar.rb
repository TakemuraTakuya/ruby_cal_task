require 'optparse'
require 'date'

opt = OptParse.new

def create_top_bar(month)
	year = Date.today.year
	puts "      #{month}月 #{year}      "
	puts "日 月 火 水 木 金 土"
end

def all_dates(month)
	year = Date.today.year
	start = Date.new(year, month, 1)
	last = Date.new(year, month, -1)
	
	#曜日1文字あたり半角スペースが3つ
	#以下は1日目の開始位置を決める。
	space = "   "
	print space * start.wday, "1".rjust(2)," "
	if start.wday == 6
		print ("\n")
	end

	date = 2
	while date <= last.day
		printf("%2d",date)
		print " "

		next_date = Date.new(year, month, date)
		if next_date.wday == 6
			print ("\n")
		end
		date = date + 1
	end
	print ("\n")
end

opt.on('-m [VAL]') {|m| 
	if m.to_i >= 1 && m.to_i <= 12
		month = m.to_i
		create_top_bar(month)
		all_dates(month)
	elsif m.nil?
		month = Date.today.month
		create_top_bar(month)
		all_dates(month)
	else
		puts "#{m} is neither a month number (1..12) nor a name"
	end
}          # <- [VAL] を追加

opt.parse!(ARGV)
