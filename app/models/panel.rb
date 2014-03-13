class Panel < ActiveRecord::Base
  validates_presence_of :content, :height, :width, :name
  validates_inclusion_of :active, :in => [true, false]

  def html
    return wrapper(self.content)
  end

  private
  def wrapper(inner)
    return "<div class='blue panel' style='#{wrapper_css}'>#{inner}</div>".html_safe
  end

  def wrapper_css
    styles = []
    styles << find_width
    styles << find_height
    return styles.join(';')
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
