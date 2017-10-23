DAYS_IN_A_PAY_PERIOD = 14
SECONDS_IN_A_DAY     = 60 * 60 * 24

matching_date = Time.new(2006, 9, 22, 2, 2, 2, 999, Time::Kind::Utc)
current_date = Time.new

difference_in_seconds = current_date - matching_date
difference_in_days = (difference_in_seconds / SECONDS_IN_A_DAY).to_i
# puts difference_in_days
days_to_wait = (
  DAYS_IN_A_PAY_PERIOD - difference_in_days
) % DAYS_IN_A_PAY_PERIOD

if (days_to_wait.zero?)
  puts "Payday today."
else
  print "Payday in " + days_to_wait.to_s + " day"
  puts days_to_wait == 1 ? "." : "s."
end

# =>
# Payday in 6 days.

# Changes:
# '' to ""
# Time.local to Time.new  : Crystal does not define time zones yet ?
