class AddShortToShorts < ActiveRecord::Migration[5.0]
  def change
    add_column :shorts, :short, :string
  end
end
