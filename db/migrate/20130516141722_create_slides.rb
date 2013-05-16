class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :name
      t.string :description
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end
    Slide.create_translation_table! :name => :string, :description => :string
  end
end
