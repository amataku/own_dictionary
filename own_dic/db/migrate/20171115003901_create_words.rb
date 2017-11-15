class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.string :genre
      t.text :mean
      t.string :alphabet
      t.string :reading

      t.timestamps
    end
  end
end
