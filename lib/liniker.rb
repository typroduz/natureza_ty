class Liniker
  
  def initialize(db)
    @db = db
  end

  def subs(text)
    @db.each do |key, value|
      if(value.nil?)
        text = text.gsub("$#{key}$", "")
        text = text.gsub("  ", " ")
      else  
        text = text.gsub("$#{key}$", value)
        puts text
      end 
    end

    return text
  end
end