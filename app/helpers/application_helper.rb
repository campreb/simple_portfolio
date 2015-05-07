module ApplicationHelper
  def tick_or_cross(val)
    glyph = val ? 'check' : 'times'
    class_name = val ? 'text-success' : 'text-danger'
    icon(glyph, '', class: class_name)
  end
end
