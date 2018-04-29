class Generator
  
  def initialize(dba)
    @dba = dba
  end

  def subs(text)
    @dba.each do |key, value|
        text = text.gsub("$#{key}$", value)
    end
  return text
  end
end