class Band < ActiveRecord::Base
  validates_presence_of :name, :description
  validates_uniqueness_of :description
end
