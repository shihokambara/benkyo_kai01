# coding: utf-8
class TekitouApp
  def call(env)
    p env
    path = env['PATH_INFO']
    case path
    when '/'
      then [
        200,
        headers, #{ 'Content-Type' => 'text/html' },
        ['<html><head><meta charset="utf-8"></head><body><h2>適当あぷり</h2></body></html>']
      ]
    else [ 404, headers, not_found ]
    end
  end

  def headers
    { 'Content-Type' => 'text/html' }
  end

  def not_found
   [ '<html><head><meta charset="utf-8"></head><body><h2>そんなページない。。。困る。。。</h2></body></html>' ]
  end
end

