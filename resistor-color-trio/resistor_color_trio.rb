class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def initialize(colors)
    @colors = colors
    @new_colors = @colors[0..1].map { |color| COLORS.index(color) }.join.to_i
    if COLORS.index(@colors[2]) > 0 then
      @new_colors *= (10 ** COLORS.index(@colors[2]))
    end
  end

  def label
    colors_val = "ohms"
    if @new_colors >= 1000 then
      @new_colors /= 1000
      colors_val = "kiloohms"
    end
    return "Resistor value: #{@new_colors} #{colors_val}"
  end
end

puts ResistorColorTrio.new(%w[red black red]).label