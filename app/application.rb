class Application

  def call(env)
    resp = Rack::Response.new
    
    
    num1 = Kernel.rand(1..2)
    num2 = Kernel.rand(1..2)
    num3 = Kernel.rand(1..2) 

    resp.write "#{num1} \n" 
    resp.write "#{num2} \n" 
    resp.write "#{num3} \n" 
    
    if num1==num2 && num2==num3
      resp.write "You Win"
    else 
      resp.write "You Lose"
    end 
    
    resp.finish
  end

end


# class Application
 
#   def call(env)
#     resp = Rack::Response.new
 
#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)
 
#     if num_1==num_2 && num_2==num_3
#       resp.write "You Win"
#     else
#       resp.write "You Lose"
#     end
 
#     resp.finish
#   end
 
# end

