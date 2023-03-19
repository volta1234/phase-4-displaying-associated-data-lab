class ItemsController < ApplicationController
    def index
      @items = Item.all.includes(:user)
      render json: @items.to_json(include: { user: { only: [:id, :username, :city] } })
    end
  end

