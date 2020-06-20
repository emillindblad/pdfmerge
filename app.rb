require 'sinatra'
require 'combine_pdf'
require_relative 'merge.rb'
enable :sessions
include Pdf

get('/') do
    slim(:index)
end

post('/merge') do
    Pdf.create(params)
    redirect('/pdf/out.pdf')
end
