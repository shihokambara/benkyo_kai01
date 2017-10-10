# coding: utf-8
class TekitouApp
  def call(env)
    p env
    [
        200,
        { 'Content-Type' => 'text/html' },
        ['<html><head><meta charset="utf-8"></head><body><h2>適当あぷり</h2></body></html>']
      ]
  end
end

