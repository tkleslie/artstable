class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :box_office
  belongs_to :group
  validates_presence_of :name
  validates_presence_of :group_id
  validates_presence_of :date
  validates_presence_of :venue_id
end
