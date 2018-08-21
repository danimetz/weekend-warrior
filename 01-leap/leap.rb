#
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400

# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0 && year % 400 != 0
#      return false
#     else
#      return true
#    end
#  end
# end

# def leap_year?(year)
#   year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
# end

def leap_year?(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end
