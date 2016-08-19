class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :message, :phone_number
  validates :name, :email, :subject, :message, :phone_number, presence: true
end
