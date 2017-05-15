class ParserController < ApplicationController

require 'open-uri'
require 'nokogiri'
require 'json'


def index

url = 'https://weather.com/'
 
response = open(url)
 
doc = Nokogiri::HTML(response)


doc.css('a').each do |link|

title = link['text'].to_s

href = link['href'].to_s

@links = title + href



doc.css('h1').each do |h1s|


@h1head = h1s.text.strip



doc.css('h2').each do |h2s|


@h2head = h2s.text.strip




doc.css('h3').each do |h3s|


@h3head = h3s.text.strip





@data = Parser.create(
      link: @links,
       h1: @h1head,
       h2: @h2head,
       h3: @h3head
     )







end


end


end


end


end

render json: @data

end
