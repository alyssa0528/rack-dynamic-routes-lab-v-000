class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  if req.path.match(/items/)

    if @@items.include?(Item.name)
      resp.write Item.price
    else
      resp.write "Item not found"
      resp.status = 400
    end
  else
      resp.write "Route not found"
      resp.status = 404
  end
    resp.finish

  end

end
