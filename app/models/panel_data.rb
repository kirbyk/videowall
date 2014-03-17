class PanelData < ActiveRecord::Base
  belongs_to :panel
  has_many :texts, dependent: :destroy
  accepts_nested_attributes_for :texts, reject_if: lambda {|a| a[:content].blank?},
                                              allow_destroy: true
end
