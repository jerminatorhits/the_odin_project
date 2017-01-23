require 'socket'
require 'json'

host = 'localhost'     # The web server
port = 2000                         # Default HTTP port
path = "index.html"                 # The file we want 

# This is the HTTP request we send to fetch a file
#request = "GET #{path} HTTP/1.0\r\n\r\n"
print "Would you like to POST or GET? "
user_input = gets.upcase.chomp
until ['POST','GET'].include?(user_input)
  puts "Invalid Command.  Type POST or GET: "
  user_input = gets.upcase.chomp
end

socket = TCPSocket.open(host,port)  # Connect to server

hash_data = {}

if user_input == "POST"
  print "Viking name: "
  name = gets.capitalize.chomp
  puts
  puts "Viking email: "
  email = gets.chomp
  puts
  hash_data = {:viking => {:name=>name, :email=>email} }
  send = hash_data.to_json
  request = "#{user_input} #{path} HTTP/1.0\r\n\r\n"
  socket.puts(request)
  socket.puts "From: #{hash_data[:viking][:name]}, #{hash_data[:viking][:email]}"
  socket.puts "User-Agent: #{input[2]}"
  socket.puts "Content-Type: application/json"
  socket.puts "Content-Length: #{send.size}"
  socket.puts "\n"
  socket.body = send
elsif user_input == "GET"
  socket.print(request)              # Send request
end
=begin
response = socket.read              # Read complete response
# Split response at first blank line into headers and body
headers,body = response.split("\r\n\r\n", 2) 
print body                          # And display it
=end
while line = socket.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end


socket.close

=begin
GET /path/index.html HTTP/1.0
From: jeremytotheawesome@yahoo.com
User-Agent: HTTPTool/1.0
[blank line here]
=end
