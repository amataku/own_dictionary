class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name
      t.string :reading
      t.string :alphabet
      t.text :mean
      t.string :genre

      t.timestamps
    end
  end
end
