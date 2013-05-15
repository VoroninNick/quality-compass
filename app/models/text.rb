class Text < ActiveRecord::Base
  attr_accessible :body, :name
  translates :body, :name
  class Translation
    attr_accessible :locale
  end
end
