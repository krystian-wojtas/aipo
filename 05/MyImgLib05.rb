require 'MyImgLib'

MyImgLib.class_eval do
  
  def ramka(s=1, kolor=Magick::QuantumRange)
      edit(:columns => @orginal.columns + 2*s, :rows => @orginal.rows+2*s) do |c, r, chb|
        if c < s or c > @orginal.columns+s-1 or r < s or r > @orginal.rows+s-1
          0
        else
          chb[c-s][r-s]
        end
      end
  end
  
  def kmm
    czworki = [ 3, 6, 7, 12, 14, 15, 24, 28, 30, 48, 56, 60, 96, 112, 120, 129, 131, 135, 192, 193, 195, 224, 225, 240 ]
    wyciecia = [ 3, 5, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30, 31, 48, 52, 53, 54, 55, 56, 60, 61, 62, 63, 65, 67, 69, 71, 77, 79, 80, 81, 83, 84, 85, 86, 87, 88, 89, 91, 92, 93, 94, 95, 97, 99, 101, 103, 109, 111, 112, 113, 115, 116, 117, 118, 119, 120, 121, 123, 124, 125, 126, 127, 131, 133, 135, 141, 143, 149, 151, 157, 159, 181, 183, 189, 191, 192, 193, 195, 197, 199, 205, 207, 208, 209, 211, 212, 213, 214, 215, 216, 217, 219, 220, 221, 222, 223, 224, 225, 227, 229, 231, 237, 239, 240, 241, 243, 244, 245, 246, 247, 248, 249, 251, 252, 253, 254, 255 ]
    sprawdzarka = [ [128, 64, 32], [1, 0, 16], [2, 4, 8] ]
      
    
  end
  
end