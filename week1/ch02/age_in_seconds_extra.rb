time = Time.new
birthdate = [15, 12, 1999]
initial_year = birthdate[2]
d_years = time.year - birthdate[2]
d_months = time.month - birthdate[1]
d_days = time.day - birthdate[0]
days_per_month = [31, 28, 30, 30, 31, 30, 31, 31, 30, 31, 30, 31]
leap_years = 0

while initial_year <= time.year
  if (initial_year%4 == 0) || (initial_year%100 == 0 && initial_year%400 == 0)
    leap_years += 1
    leap_year = true
  end
  initial_year += 1
end

if leap_year
  days_per_month[1] = 29
end

if d_months >= 0 && d_days >= 0
  years = d_years
  months = d_months
  days = d_days
else
  years = d_years - 1
  months = time.month - 1
  days = time.day
end

def date_to_days(which_month, which_day)
  days_per_month.each_index do |days_in_month|
    break if days_in_month == which_month - 1
    days += days_per_month[days_in_month]
  end
end

days += 365*years + leap_years
puts days
puts "#{days*24*60*60} seconds"
