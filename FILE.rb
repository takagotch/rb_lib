#ERR,debug
#put ...
#raise...

STDERR.put "#{__FILE__}:#{__LINE__}: wrong"
#
raise "Assertion failed in #{__method__} at #{__FILE__}:#{__LINE__}"

