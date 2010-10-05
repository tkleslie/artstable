class Type < ActiveRecord::Base
  has_many :groups
  validates_uniqueness_of :name
  validates_presence_of :name
end
