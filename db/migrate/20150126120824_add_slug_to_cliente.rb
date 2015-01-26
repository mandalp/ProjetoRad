class AddSlugToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :slug, :string
  end
end
