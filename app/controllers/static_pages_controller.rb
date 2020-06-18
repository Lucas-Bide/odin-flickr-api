class StaticPagesController < ApplicationController
  def index
    @photo_urls = nil
    if params[:id]
      @photo_urls = Flickr.new.photos.search(user_id: params[:id]).map { |ph| Flickr.url(ph) }
    end
  end
end
