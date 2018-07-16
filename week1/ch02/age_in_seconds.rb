time = Time.new
today = [time.day, time.month, time.year]
birthdate = [20, 12, 1999] #dd/mm/yy
initial_year = birthdate[2]
d_years = time.year - birthdate[2]
d_months = time.month - birthdate[1]
d_days = time.day - birthdate[0]
leap_years, days_total = 0,0

def is_loop_year(year)
  if (year%4 == 0) || (year%100 == 0 && year%400 == 0)
    return true
  else
    return false
  end
end

def days_since_beginning_of_year(date)
  days_per_month = [31, 28, 30, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if is_loop_year(date[2])
    days_per_month[1] = 29
  end

  days_since_date = 0
  days_per_month.each_index do |month_number|
    break if month_number == date[1] - 1
    days_since_date += days_per_month[month_number]
  end
  days_since_date += date[0]
  return days_since_date
end

#Loop year conter
if is_loop_year(birthdate[2]) && birthdate[1] > 2
  initial_year += 1
end
while initial_year <= time.year
  if is_loop_year(initial_year)
    leap_years += 1
  end
  initial_year += 1
end

if d_months >= 0 && d_days >= 0 #If on or after birthday
  years = d_years
  months = d_months
  days = d_days
else
  years = d_years - 1
  months = time.month
  days = time.day
end

days_total += 365*years + leap_years
days_total += 365 - days_since_beginning_of_year(birthdate)
days_total += days_since_beginning_of_year(today)
puts days_total 'days'
puts "#{days_total*24*60*60} seconds and counting..."
