class Vtuber < ApplicationRecord
  validates_presence_of :name, :jpname, :quote, :description, :main_image_url, :image_urls, :main_vid_url
end
