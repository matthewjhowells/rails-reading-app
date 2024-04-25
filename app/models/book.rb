class Book < ApplicationRecord
  include Mongoid::Document
  include Mongoid::Timestamps 

  field :title, type: String
  field :author, type: String
  field :pages, type: Integer
  field :minutes, type: Integer
  field :status, type: String, default: 'tbr'

  VALID_STATUSES = ["tbr", "reading", "read"]

  validates :title, presence: true
  validates :author, presence: true
  validates :status, inclusion: { in: VALID_STATUSES }

end