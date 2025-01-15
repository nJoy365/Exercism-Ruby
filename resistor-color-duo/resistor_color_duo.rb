module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    colors[0..1].map { |color| COLORS.index(color) }.join.to_i
  end
end