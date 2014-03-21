class Panel < ActiveRecord::Base
  has_and_belongs_to_many :styles
  has_many :panel_datas, dependent: :destroy
  has_many :orderings
  accepts_nested_attributes_for :panel_datas, reject_if: lambda {|a| a[:name].blank?},
                                              allow_destroy: true
  validates_presence_of :content, :height, :width, :name
  validates_inclusion_of :active, :in => [true, false]
  # TODO add validation for css
  # TODO add vaildation for width & height

  def html
    return wrapper(self.content)
  end

  private
  def wrapper(inner)
    return "#{wrapper_css}<div class='panel' id='p#{self.id}' style='#{global_css}'>#{wrapper_js} #{inner}</div>".html_safe
  end

  def wrapper_css
    if self.css
      pre_compiled = "#p#{self.id}{#{self.css}}"
      compiled = Sass.compile pre_compiled, syntax: :scss
      return "<style>#{compiled}</style>"
    end
  end

  def global_css
    styles = self.styles.map {|s| s.css}
    styles << find_width
    styles << find_height
    return styles.join(';')
  end

  def wrapper_js
    return "<script>#{self.js}</script>"
  end

  def find_width
    width = self.width * width_interval
    return "width: #{width}%"
  end

  def find_height
    height = self.height * height_interval
    return "height: #{height}%"
  end

  def width_interval
    return 100/VIDEOWALL_SCREENS_WIDE
  end

  def height_interval
    return 100/VIDEOWALL_SCREENS_TALL
  end
end
