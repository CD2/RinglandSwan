class CreatePages < ActiveRecord::Migration[5.0]

  def change
    create_table :pages do |t|
      t.string :name
      t.text :body
      t.text :summary
      t.string :page_title
      t.string :banner_caption
      t.text :meta_description
      t.boolean :meta_page
      t.string :machine_name
      t.string :slug
      t.string :menu_name
      t.boolean :include_in_menu
      t.integer :order
      t.boolean :featured
      t.integer :sidebar
      t.boolean :menu

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end

end
