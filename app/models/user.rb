class User < ApplicationRecord
  has_many :partner_requests, dependent: :destroy
  has_many :pending_partners, through: :partner_requests, source: :partner

  has_many :partnerships, dependent: :destroy
  has_many :partners, through: :partnerships
end
