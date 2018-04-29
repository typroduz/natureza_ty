class Generator
  
  def initialize(dba)
    @dba = dba
  end

  def subs(text)
    @dba.each do |key, value|
      if(value.nil?)
        text = text.gsub("$#{key}$", "")
        text = text.gsub("  ", " ") #rataria
        text = text.gsub(" ()", "") #rataria
      else  
        text = text.gsub("$#{key}$", value)
      end 
    end
  end
end