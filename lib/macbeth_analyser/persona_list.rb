class MacbethAnalyser::PersonaList
  def initialize
    @personas = {}
  end

  def add(name)
    name.capitalize!
    return if name == "All"

    unless @personas[name]
      @personas[name]  = 1
    else
      @personas[name] += 1
    end
  end

  def print
    @personas.sort_by{|name, speechs| speechs}.reverse.map do |name, speechs|
      "#{speechs} #{name}"
    end.join("\n")
  end
end
