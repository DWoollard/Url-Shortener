class CreateShorts < ActiveRecord::Migration[5.0]
  def change
    create_table :shorts do |t|
      t.string :long

      t.timestamps
    end
  end
end
