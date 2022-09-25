require 'date'

def all_dates(month)
  this_year = Date.today.year
  first_day = Date.new(this_year, month, 1)
  last_day = Date.new(this_year, month, -1)
  
  date = 1
  while date <= last_day.day
    if date == first_day.day
      space = "   "
      print space * first_day.wday, date.to_s.rjust(2)," "
      print("\n") if first_day.wday == 6
    else
      printf("%2d",date)
      print " "
  
      next_date = Date.new(this_year, month, date)
      print("\n") if next_date.wday == 6
    end

    date += 1

  end
  print ("\n")
end

all_dates(9)
