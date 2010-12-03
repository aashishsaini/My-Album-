class Photo < ActiveRecord::Base


  belongs_to :cover
#paperclip
  has_attached_file :image_url,
     :styles => {
       :thumb=> "100x100#",
       :small  => "200x200>" }

validates :name , :presence => true 
validates :image_url , :presence => true

                        
has_many :tggs

    accepts_nested_attributes_for :tggs, :allow_destroy => :true,
   :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }  

end
