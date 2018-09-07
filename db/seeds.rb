require 'csv'

csv_text = File.read('data/creature.csv')
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  Creature.create!(
common_name: row['common_name'],
latin_name: row['latin_name'],
description: row['description'], iucn_status: row['iucn_status'],
habitat: row['habitat'],
image: row['image'])
  puts "#{row['common_name']} saved"
end

# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
