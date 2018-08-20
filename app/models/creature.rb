require 'csv'

class Creature < ApplicationRecord
  def initialize(h)
    h.each_key do |key|
      instance_variable_set(('@' + key.to_s).to_sym, h[key])
      self.class.send(:attr_reader, key)
    end
  end
end
creature = []
CSV.foreach('data/creature.csv',
            headers: true,
            header_converters: ->(h) { h.downcase.to_sym }) do |person|
              people << Person.new(person.to_hash)
            end
end
