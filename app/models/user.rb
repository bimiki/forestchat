class User < ApplicationRecord

  validates_uniqueness_of :username

def self.generate
  adjectives = ['Ancent', 'Broken', 'Creative', 'dangerous', 'Effective', 'Flying', 'Gilded']
  nouns = ['highway', 'Intern', 'Fish', 'Nurse', 'Bone']
  number = rand.to_s[2..4]
  username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
  create(username: username)
end


end
