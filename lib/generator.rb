class Generator
  
  def initialize(db)
    @db = db
  end

  def subs(text)
    @db.each do |key, value|
      if(value.nil?)
        text = text.gsub("$#{key}$", "")
        text = text.gsub("  ", " ") #rataria
        text = text.gsub(" ()", "") #rataria
      else  
        text = text.gsub("$#{key}$", value)
      end 
    end

    return text
  end
end