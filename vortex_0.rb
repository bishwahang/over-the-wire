#!/usr/bin/env ruby
require 'socket'
# s = Socket.new Socket::INET, Socket::SOCK_STREAM
# s.connect Socket.pack_sockaddr_in(80, 'example.com')
s = TCPSocket.new "vortex.labs.overthewire.org", 5842

line = s.read(16)

puts line

data = line.unpack("V*")
puts data
sum = data.inject(&:+)
puts sum
res = [sum].pack("V*")
s.send res,0
line = s.gets
puts line

