class WitsController < ApplicationController
  before_filter(:load_wit, only: [:edit, :update, :show, :destroy])

  def index
    @wits = Wit.all
  end

  def new
    @wit = Wit.new
  end

  def create
    @wit = Wit.new(content: params[:wit][:content])
    @wit.create

    redirect_to(wits_path)
  end

  def edit
  end

  def update
    @wit.update(content: params[:wit][:content])

    redirect_to(wits_path)
  end

  def show
  end

  def destroy
    @wit.delete

    redirect_to(wits_path)
  end

  private

  def load_wit
    @wit = Wit.find(params[:id])
  end
end
