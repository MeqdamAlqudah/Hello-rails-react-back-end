class V1::GreetingsController < ApplicationController
  def index
    render json: {
      greeting: Greeting.all.order('RANDOM()').first[:greetingmessage]
    }.to_json
  end
  def new
    @greeting = Greeting.new
  end
  def create
    greeting = Greeting.new(greetingmessage:params[:greetingmessage])
    if greeting.save
      render json: greeting
    else
      render json:greeting.errors.full_messages
    end
  end
end
