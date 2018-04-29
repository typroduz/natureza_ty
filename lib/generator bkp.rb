class Generator
  
  def initialize(dba)
    @dba = dba
  end

  def subs(templ)
    @dba.each do |key, value|
      if(value.nil?)
        templ = templ.gsub("$#{key}$", "")
        templ = templ.gsub("  ", " ") #rataria
        templ = templ.gsub(" ()", "") #rataria
      else  
        templ = templ.gsub("$#{key}$", value)
      end 
    end
  end
end