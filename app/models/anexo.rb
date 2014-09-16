class Anexo < ActiveRecord::Base
  belongs_to :bolsista
  
  attr_accessible  :descricao, :bolsista_id
  
    
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "700x750>", :thumb => "100x100>" }, 
                             :path => ":rails_root/public/images/:class/:id/:style_:basename.:extension",
                             :url => "/images/:class/:id/:style_:basename.:extension"
  
  attr_accessible :avatar_file_name, :avatar_content_type, :avatar_file_size
    
 validates_presence_of :descricao, :avatar
 
  
end


