class Slide < ActiveRecord::Base
  attr_accessible :avatar, :description, :name, :delete_avatar, :orientation, :slice1_rotation, :slice2_rotation, :slice1_scale, :slice2_scale
  translates :description, :name

  class Translation
    attr_accessible :locale
  end

  validates :name, presence: true

  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  has_attached_file :avatar, :styles => { :thumb => '180>', :item => '600>' },
                    :url  => '/assets/banners/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/assets/banners/:id/:style/:basename.:extension'

  rails_admin do
    list do
      field :name
      field :description
      field :avatar
    end

    edit do
      field :name
      field :description
      field :avatar
      field :orientation
      field :slice1_rotation
      field :slice2_rotation
      field :slice1_scale
      field :slice2_scale
    end
  end
end
