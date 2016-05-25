class CreateGalleryTags < ActiveRecord::Migration[5.0]
  def change
    create_table :gallery_tags do |t|
      t.integer :gallery_image_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
