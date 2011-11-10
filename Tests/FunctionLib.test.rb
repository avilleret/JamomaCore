#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

environment = TTObject.new "environment"
environment.set "benchmarking", 1

cpu_total = 0.0;

puts
puts "TESTING LINEAR FUNCTION"
o = TTObject.new "linear"
o.send "test"
err, cpu = o.send "getProcessingBenchmark"
cpu_total += cpu

puts "TESTING SMOOTHPOLYNOMIALFUNCTION WINDOW"
o = TTObject.new "smoothPolynomial"
o.send "test"
err, cpu = o.send "getProcessingBenchmark"
cpu_total += cpu

puts
puts "time spent calculating audio process method: #{cpu_total} µs"
puts
