class Group < ActiveRecord::Base
  belongs_to :type
  has_many :events
  validates_presence_of :name
  validates_presence_of :type_id
end
