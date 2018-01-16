class CreateDads < ActiveRecord::Migration[5.1]
  def change
    create_table :dads do |t|
      t.string :name
      t.float :rating

      t.timestamps
    end
  end
end
