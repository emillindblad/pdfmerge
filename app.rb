require 'sinatra'
require 'combine_pdf'
require_relative 'merge.rb'
include Pdf

get('/') do
    slim(:index)
end

get('/keepalive') do
    "Ah, ha, ha, ha, stayin' alive, stayin' alive."
end

post('/merge') do
    status 200
    headers 'content-type' => "application/pdf"
    body Pdf.create(params)
end
