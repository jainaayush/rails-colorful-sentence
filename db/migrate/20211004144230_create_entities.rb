class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.integer :sentence_id
      t.string :text
      t.string :text_type

      t.timestamps
    end
  end
end

