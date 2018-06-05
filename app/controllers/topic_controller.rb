class TopicsController < ApplicationController
  before_action :set_board
  before_action :set_item, only: [:show, :edit, :update, :destroy]
 
  def index
    @topics = @board.topics
  end

  def show
    @description = Description.where("topic_id = #{topic.id}")
  end

  def new
    @topic = @board.topic.new
  end

  def edit
  end

  def create
    @topic = @board.create(topic_params)
    if @topic.save
      redirect_to [@board,@topic]
    else
      render :form
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to [@board, @topic]
    else
      render :form
    end
  end

  def destroy
    @topic.destroy
    redirect_to board_topic_path
  end

  private

  def set_board
    @board =Board.find(params[:board_id])
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:board, :name)
  end

end


  