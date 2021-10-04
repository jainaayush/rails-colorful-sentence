class CreateSentences < ActiveRecord::Migration[6.1]
  def change
    create_table :sentences do |t|
      t.text :description

      t.timestamps
    end
  end
end
