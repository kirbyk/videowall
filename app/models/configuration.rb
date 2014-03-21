class Configuration < ActiveRecord::Base
  has_many :orderings
  has_many :panels, through: :orderings
end
