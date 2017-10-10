require 'webrick'
include WEBrick

s = HTTPServer.new(
  :Port => 8000,
  :DocumentRoot => File.join(Dir::pwd, 'public_html')
)

trap("INT"){ s.shutdown }
s.start
