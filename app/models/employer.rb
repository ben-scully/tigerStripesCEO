class Employer < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 3 }
  validates :company, presence: true,
                      length: { minimum: 3 }
  validates :email, presence: true,
                    length: { minimum: 3 },
                    uniqueness: true
end
