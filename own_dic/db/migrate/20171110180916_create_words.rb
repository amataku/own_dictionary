class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.string :alphabet
      t.string :reading
      t.text :mean

      t.timestamps
    end
  end
end
