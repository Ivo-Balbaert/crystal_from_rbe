quotation_file = ARGV[0] || (ENV["HOME"] + "/scripts/sig_quotes.txt")
quotations = File.read_lines(quotation_file)
# puts quotations
# puts quotations.size  # 8
random_index = rand(quotations.size)
# puts random_index
quotation = quotations[random_index]
# puts quotation
sig_file_name = ENV["HOME"] + "/.signature"
signature_file = File.new(sig_file_name, "w")
signature_file.puts "Kevin Baird | kcbaird@world.oberlin.edu | http://kevinbaird.net/"
signature_file.puts quotation
signature_file.close

# Changes:
# readlines to read_lines
# read_lines needs filename as String, no need to do File.new "r" and close
# file_lines.to_s: to_s: overbodig

# Output:
# crystal random_sig.cr test.txt
# creates file .signature in /home/ivo with contents=
# Kevin Baird | kcbaird@world.oberlin.edu | http://kevinbaird.net/
# /test_opts.rb/1.6/Fri Feb 23 21:26:40 2007//
