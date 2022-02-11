class AddImageToPictures < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :image, :text
  end
end
