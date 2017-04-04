class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word
      t.string :reading
      t.string :meaning
      t.text :example

      t.timestamps
    end
  end
end
