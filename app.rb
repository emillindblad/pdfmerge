require 'sinatra'
require 'combine_pdf'
require_relative 'merge.rb'
enable :sessions
include Pdf

get('/') do
    slim(:index)
end

get('/*') do
    slim(:index)
end
post('/merge') do
    status 200
    body Pdf.create(params)
end
