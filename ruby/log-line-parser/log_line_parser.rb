class LogLineParser
  def initialize(line)
    @line = line
  end

  def line
    return @line
  end

  def message
    return @line.gsub(/\[.*?\]\:/, '').strip
  end

  def log_level
    line_split = @line.split(" ")
    log = line_split[0]
    return log[1, (log.size - 3)].downcase
  end

  def reformat
    return "#{self.message} (#{self.log_level})"
  end
end

msg = "[WARNING]:  Disk almost full\r\n"
llp = LogLineParser.new(msg)
puts llp.line
puts llp.message
puts llp.log_level
puts llp.reformat
