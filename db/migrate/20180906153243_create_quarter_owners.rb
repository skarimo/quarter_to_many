class CreateQuarterOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :quarter_owners do |t|
      t.belongs_to :user
      t.belongs_to :quarter
      t.timestamps
    end
  end
end
