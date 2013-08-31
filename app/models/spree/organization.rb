module Spree
  class Organization < ActiveRecord::Base
    attr_accessible :name
    
    belongs_to :owner, class_name: "Spree::User"
    has_many   :members, class_name: "Spree::User"
    
    validates :name, presence: true
    validates :owner, presence: true
         
    # adddresses are tied to org members rather than the org.  this give us more
    # flexibility is letting the user add/remove multiple addresses
    
    def just_members
      members - [owner]
    end
    
    def add_member!(user)
      user.organization = self
      user.bill_address = owner.bill_address
      user.ship_address = owner.ship_address
      user.save!
    end
    
    def remove_member!(user)
      user.organization = nil
      user.bill_address = nil
      user.ship_address = nil
      user.save!
    end
  end
end