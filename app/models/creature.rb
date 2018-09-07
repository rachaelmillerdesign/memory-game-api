require 'csv'

class Creature < ApplicationRecord
  validates :common_name, uniqueness: :true
  has_many :favorites
  has_many :users, through: :favorites
  # def initialize(h)
  #   h.each_key do |key|
  #     instance_variable_set(('@' + key.to_s).to_sym, h[key])
  #     self.class.send(:attr_reader, key)
  #   end
  # end
  # def self.load_from_csv(csv_file)
  #   creatures = []
  #   CSV.foreach(csv_file,
  #           headers: true,
  #           header_converters: ->(h) { h.downcase.to_sym }) do |creature|
  #             creatures << Creature.create(creature.to_hash)
  #           end
  # end
end
