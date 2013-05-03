require 'gserver'

class BasicServer < GServer
  def initialize(port=2000, *args)
    super(port, *args)
  end
  def serve(io)
    puts "test"
    io.puts("Hello world!")
  end
end

server = BasicServer.new
server.audit = true
server.start
sleep 600
server.shutdown
