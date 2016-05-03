module MacbethAnalyser
  class Main
    def self.run
      doc = Nokogiri::XML(open("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))
      personas = PersonaList.new

      doc.xpath("//SPEECH").each_with_index do |speech, index|
        speaker = speech.children.detect{|element| element.name == "SPEAKER"}.content
        next if speaker == "ALL"

        speech.children.select{|element| element.name == "LINE"}.each { personas.add(speaker) }
      end

      puts personas.print
    end
  end
end
