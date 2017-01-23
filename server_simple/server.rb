require 'socket'               # Get sockets from stdlib
require 'json'

server = TCPServer.open(2000)  # Socket to listen on port 2000
loop {                         # Servers run forever
  client = server.accept       # Wait for a client to connect
  # Parse incoming request
  input = client.gets.split(" ")
  case input[0]
    when "GET"
      if File.file?(input[1])
        f = File.open(input[1], "r")
        client.puts "#{input[2]} 200 OK"
        client.puts(Time.now.ctime)  # Send the time to the client
        client.puts("Character count: #{File.size(input[1])}")
        f.each_line do |line|
  	      client.puts(line)
  	    end
  	  else
        client.puts "#{input[2]} 404 File Not Found"
  	  end
  	when "POST"

  		
  	  params = JSON.parse
      




      f = File.open(input[1], "r")
      client.puts "#{input[2]} 200 OK"
      client.puts(Time.now.ctime)  # Send the time to the client
      client.puts("Character count: #{File.size(input[1])}")
      f.each_line do |line|
	    client.puts(line)
  	  end
    else
    	"Error"
  end
  client.puts "Closing the connection. Bye!"
  client.close                 # Disconnect from the client
}

=begin
HTTP/1.0 200 OK
Date: Fri, 31 Dec 1999 23:59:59 GMT
Content-Type: text/html
Content-Length: 1354
Let's say you have a string "GET /index.html HTTP/1.0"
=end