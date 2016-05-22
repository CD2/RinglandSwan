class CreateBannerImages < ActiveRecord::Migration[5.0]
  def change
    create_table :banner_images do |t|
      t.string :image
      t.integer :page_id

      t.timestamps
    end
  end
end
