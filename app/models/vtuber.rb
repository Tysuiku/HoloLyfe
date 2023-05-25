class Vtuber < ApplicationRecord
  validates_presence_of :name, :jpname, :quote, :description
end
