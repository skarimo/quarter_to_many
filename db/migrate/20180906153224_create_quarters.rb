class CreateQuarters < ActiveRecord::Migration[5.2]
  def change
    create_table :quarters do |t|
      t.integer :year
      t.integer :degree_rust
      t.timestamps
    end
  end
end
