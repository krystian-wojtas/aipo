require 'FImg4R_Test'

# przyjmuje argument nr laborki do przetestowania
# sprawdz czy w folderze $nr/test/patterns istnieja pliki
# wykonaj $nr/test/LabTest.rb
# porownaj wszystkie pliki z patterns z tymi z out

ARGV.each do|lab_nr|
  basepath = "#{lab_nr}/test/"
  #czy kasowac wszystkie test/outy?
  #TODO not eval, include instead
  eval(File.new(basepath+"LabTest.rb").read) #TODO puts ok in aspect #TODO checking after every write; aspect #TODO include
  Dir.entries(basepath+"out/").select{|fn| fn =~ /\.bmp$/}.each do |fn|
    img_out = FImg4R.new(basepath+"patterns/"+fn)
    img_org = FImg4R.new(basepath+"out/"+fn)
    begin
      img_out.test(img_org)
    rescue RuntimeError => ex
      p fn
      p ex
    end
  end
end


#throws nie ma plikow w patterns, wtedy komunikat o LabTest_init