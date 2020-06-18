require 'sinatra'

get('/') do
    slim(:index)
end

post('/merge') do
    # p params
    res = "I received the following files:\n"
    res << params['pdffiles'].map{|f| f[:filename] }.join("\n")
    res
end