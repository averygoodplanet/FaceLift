class DescriptionToText < ActiveRecord::Migration
  def change
    change_column(:websites, :description, :text)
  end
end
