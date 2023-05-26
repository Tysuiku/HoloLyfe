class AddImageUrlsToVtubers < ActiveRecord::Migration[7.0]
  def change
    add_column :vtubers, :main_image_url, :string
    add_column :vtubers, :image_urls, :string, array: true, default: []
  end
end
