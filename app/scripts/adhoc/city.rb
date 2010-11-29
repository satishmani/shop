require 'pp'
cys = File.open("city.txt"){ |f| f.readlines }
# begin ** -ve criteria **
   ncriterion = lambda {|cx| cx == nil or cx.chomp == nil or cx.chomp.strip == "" or cx.gsub('"','').split(',')[1].chomp.strip == ""}
# end ** -ve criteria **
# begin ** +ve criteria **
   pcriterion = lambda {|cx| cx != nil and cx.chomp != nil and cx.chomp.strip != "" and cx.gsub('"','').split(',')[1].chomp.strip != ""}
# end ** +ve criteria **

#ncys = cys.select &ncriterion
ncys = cys.select &pcriterion

for cy in ncys
     puts "#{cy.gsub('"','').split(',')[0].chomp.strip.split(/\s+/).each{|word| word.capitalize!}.join(' ')}, #{cy.gsub('"','').split(',')[1].chomp.strip.split(/\s+/).each{|word| word.capitalize!}.join(' ')}, IN"
end
