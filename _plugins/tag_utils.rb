module TagUtils
  def params_from_text
    data = @text.strip.split(" ")
    name = data.shift
    hash = {}
    data.each do |param|
      kv = param.split("=")
      key = kv.first.strip.downcase.to_sym
      val = kv.last.strip
      if key == :size
        width, height = case val.downcase
                          when 'medium' then [640, 480]
                          when 'big' then [800, 600]
                          else [480, 320]
                        end
        hash[:width] = width
        hash[:height] = height
      end
      hash[key] = val
    end
    [name, hash]
  end

 
end
