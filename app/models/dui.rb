class Dui < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title
end
