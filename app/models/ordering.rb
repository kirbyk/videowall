class Ordering < ActiveRecord::Base
  belongs_to :configuration
  belongs_to :panel
end
