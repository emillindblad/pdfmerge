require 'sinatra'

get('/') do
    slim(:index)
end

post('/merge') do
    byebug
    # p params
end