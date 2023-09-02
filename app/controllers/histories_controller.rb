class HistoriesController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @items = Item.all.order('created_at DESC')
  end

  private

  def history_params
    params.require(:history).permit(:color_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end


end
