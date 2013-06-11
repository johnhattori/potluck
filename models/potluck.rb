class Potluck < ActiveRecord::Base
  has_many :items, :dependent => :destroy

end
