class LogLineParser
  def initialize(line)
    @line = line.split(":")
    @level = @line[0].downcase.gsub(/\[|\]/, '')
    @msg = @line[1].strip
    @level
  end

  def message
    @msg
  end

  def log_level
    @level
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
