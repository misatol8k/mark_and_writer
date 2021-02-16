class Work < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[title content created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end  
end
