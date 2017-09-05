class Student < ApplicationRecord

  validates :name, :email, :dob,  presence: true

  # emails must be unique
  validates :email, uniqueness: true

  # students name cannot be 'DROP TABLE' or 'ALTER TABLE'
  validates :name, exclusion: {in: ['DROP TABLE', 'ALTER TABLE']}

  # students must be eighteen years old
  validate :must_be_eighteen

  def must_be_eighteen
    if self.dob
      if self.dob > 18.years.ago
        self.errors.add(:dob, 'must be atleast 18 years ago')
      end
    end
  end
end
