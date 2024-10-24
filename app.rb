require "sinatra"
require "sinatra/reloader"

require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num + @second_num

  #Result as a Float
  @result_float = @result.to_f

  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @second_num - @first_num

  #Result as a Float
  @result_float = @result.to_f

  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @second_num * @first_num

  #Result as a Float
  @result_float = @result.to_f

  erb(:mult_result)
end



get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num / @second_num

  #Result as a Float
  @result_float = @result.to_f

  erb(:div_result)
end
