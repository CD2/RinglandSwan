class AddPdfMenuToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :pdf, :string
    add_column :pages, :display_as_pdf, :boolean
  end
end
