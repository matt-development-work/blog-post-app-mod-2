class TopicsController < ApplicationController

  def index
    @topicc = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
  end

  def edit
  end

  def update
  end

end
