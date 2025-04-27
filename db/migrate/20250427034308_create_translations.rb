class CreateTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :translations do |t|
      t.references :message, null: false, foreign_key: true
      t.string :translated_language, null: false
      t.text :translated_text, null: false

      t.timestamps
    end
  end
end
