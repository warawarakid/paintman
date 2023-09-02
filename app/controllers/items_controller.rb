class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @history = @item.history
  end

  private

  def item_params
    params.require(:item).permit(:color_id).merge(user_id: current_user.id)
  end


end
