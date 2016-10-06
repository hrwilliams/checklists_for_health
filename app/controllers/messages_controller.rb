class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @week = Week.find(params[:week_id])
    @message = @week.messages.new
  end

  def create
    @week = Week.find(params[:week_id])
    @message = @week.messages.new(message_params)
    # @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Your message was sent!"
      redirect_to weeks_path
    else
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private

    def message_params
      params.require(:message).permit(:body, :to)
    end
  end
