class ListController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
  @list = List.new(lists_params)

    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    @cards = Card.new
  end

  def update
    @list = List.find(params[:id])

    if @list.update(lists_params)
      redirect_to @list
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end

  private
    def lists_params
      params.require(:list).permit(:title, :body)
    end
end
