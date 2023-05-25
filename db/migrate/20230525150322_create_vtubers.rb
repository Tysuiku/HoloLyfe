class CreateVtubers < ActiveRecord::Migration[7.0]
  def change
    create_table :vtubers do |t|
      t.string :name, null: false
      t.string :jpname, null: false
      t.string :quote, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
