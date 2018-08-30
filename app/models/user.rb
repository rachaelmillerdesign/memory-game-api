# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :favorites
  has_many :creatures, through: :favorites
end
