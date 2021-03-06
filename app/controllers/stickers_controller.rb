class StickersController < ApplicationController
  def index
    @stickers = Sticker.all.order(created_at: :desc)
  end
end
