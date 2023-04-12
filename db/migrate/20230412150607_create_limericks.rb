class CreateLimericks < ActiveRecord::Migration[7.0]
  def change
    create_table :limericks do |t|
      t.string :title
      t.text :limerick_text
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
