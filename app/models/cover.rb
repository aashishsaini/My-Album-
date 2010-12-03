class Cover < ActiveRecord::Base


validates :name, :presence => true , :uniqueness => true
validates :description  , :presence => true,
			  :length => {:minimum => 5}

has_many :photos, :dependent => :destroy
has_many :tgs

   accepts_nested_attributes_for :tgs, :allow_destroy => :true,
:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
