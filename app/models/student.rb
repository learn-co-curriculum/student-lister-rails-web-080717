class Student < ApplicationRecord

  validates :name, :email, presence: true

  # emails must be unique

  # students name cannot be 'DROP TABLE' or 'ALTER TABLE'

  # students must be eighteen years old
end
