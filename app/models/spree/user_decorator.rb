module Spree
  Spree::User.class_eval do 
    belongs_to :organization
    
    attr_accessible :organization_attributes
    
    accepts_nested_attributes_for :organization
  end
end