class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.string :description
      t.string :before_image
      t.string :after_image

      t.timestamps
    end
  end
end
