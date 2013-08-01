module Spree
  Spree::User.class_eval do 
    belongs_to :organization
    
    before_validation :set_org_owner_if_nil
    
    attr_accessible :organization_attributes
    
    accepts_nested_attributes_for :organization
    
    def set_org_owner_if_nil 
      self.organization.owner = self if self.organization && !self.organization.owner
    end
  end
end