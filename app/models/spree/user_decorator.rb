module Spree
  Spree::User.class_eval do 
    belongs_to :organization
    
    before_validation :set_as_org_owner, if: "organization && !organization.owner"
    
    attr_accessible :organization_attributes
    
    accepts_nested_attributes_for :organization
    
    def set_as_org_owner
      self.organization.owner = self 
    end
  end
end