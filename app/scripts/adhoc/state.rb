require 'pp'
cys = File.open("city.txt"){ |f| f.readlines }
states = {}
for cy in cys
  if cy and cy.chomp and cy.chomp.strip != ""
     states["#{cy.gsub('"','').split(',')[1].chomp.strip.split(/\s+/).each{|word| word.capitalize!}.join(' ')}"] = "x" if states.has_key?( "#{cy.gsub('"','').split(',')[1].chomp.strip.split(/\s+/).each{|word| word.capitalize!}.join(' ')}" ) == false and cy.gsub('"','').split(',')[1].chomp.strip != ""
  end
end 
pp states
puts states.size
