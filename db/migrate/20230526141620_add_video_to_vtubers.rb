class AddVideoToVtubers < ActiveRecord::Migration[7.0]
  def change
    add_column :vtubers, :main_vid_url, :string
  end
end
