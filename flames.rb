# flames.rb
require 'rubygems'
require 'sinatra'
require './initialize'

get '/' do

  unless params.empty? || params[:person1].empty? ||  params[:person2].empty?
    a=params[:person1].split().join().split('')
    b=params[:person2].split().join().split('')
    c=((a.subtract_once b) + (b.subtract_once a)).count
    x="FLAMES".split('')
    5.times do
     temp= (c + x.count - 1) % x.count
     x.delete_at(temp)
     x=x.rotate(temp)
    end
    @result=x.first
  end
  erb :index
end
