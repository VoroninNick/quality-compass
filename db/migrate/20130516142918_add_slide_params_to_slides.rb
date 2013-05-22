class AddSlideParamsToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :orientation, :string
    add_column :slides, :slice1_rotation, :string
    add_column :slides, :slice2_rotation, :string
    add_column :slides, :slice1_scale, :string
    add_column :slides, :slice2_scale, :string
  end
end
