cys = File.open("city.txt"){ |f| f.readlines }
for cy in cys
  if cy and cy.chomp and cy.chomp.strip != ""
     puts "#{cy.gsub('"','').split(',')[0].chomp.strip.split(/\s+/).each{|word| word.capitalize!}.join(' ')}, #{cy.gsub('"','').split(',')[1].chomp.strip.split(/\s+/).each{|word| word.capitalize!}.join(' ')}, IN" if cy.gsub('"','').split(',')[1].chomp.strip != ""
  end
end 
