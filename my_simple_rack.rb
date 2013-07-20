# my_simple_rack.rb
cmdLine = ARGV[0]
my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"},
["You added '#{cmdLine}' to the command line!"]] }
puts my_rack_proc.call({})