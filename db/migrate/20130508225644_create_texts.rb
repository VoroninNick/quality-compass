class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
    Text.create_translation_table! :name => :string, :body => :text
  end
end
