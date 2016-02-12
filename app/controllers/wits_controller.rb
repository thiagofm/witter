class WitsController < ApplicationController
  def index
    @wits = Wit.all
  end

  def new
    @wit = Wit.new
  end

  def create
    @wit = Wit.new(content: params[:wit][:content])
    @wit.save
  end

  def update
  end

  def edit
  end

  def show
  end
end
