class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(strong_params)
    if @topic.errors.empty?
      redirect_to @topic
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(strong_params)
    if @topic.errors.emtpy?
      redirect_to topic_path(@topic)
    else
      render :edit
    end
  end

  private

  def strong_params
    params.require(:topic).permit(:name, :description)
  end

end
