require 'benchmark/ips'

STRING_HASH = {'foo' => 'var'}
SYMBOL_HASH = {:foo => 'var'}
INTEGER_HASH = {1 => 'var'}
Benchmark.ips do |x|
	x.report("String") {STRING_HASH["foo"]}
	x.report("Symbol") {STRING_HASH[:foo]}
	x.report("String") {INTEGER_HASH[1]}
	x.compare!
end