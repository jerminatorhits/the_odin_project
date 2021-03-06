require 'socket'      # Sockets are in standard library

hostname = 'localhost'
port = 2000

s = TCPSocket.open(hostname, port)

while line = s.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end
s.close               # Close the socket when done

=begin
GET /path/index.html HTTP/1.0
From: jeremytotheawesome@yahoo.com
User-Agent: HTTPTool/1.0
[blank line here]
=end