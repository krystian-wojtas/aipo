class ImgRW_Jruby  
  include Java 
  
  attr_accessor :rch, :gch, :bch
  attr_reader :qr
  
  def initialize()
    #define max color value    
    @qr = 255
  end
  
  
  #creating empty tables for chanels of colors
  def create_empty(rows, columns)
    @rch = Array.new(rows)
    @gch = Array.new(rows)
    @bch = Array.new(rows)
    
    0.upto rows-1 do |r|
      @rch[r] = Array.new(columns, 0)
      @gch[r] = Array.new(columns, 0)
      @bch[r] = Array.new(columns, 0)
    end    
  end
  
  
  def read(path)
    file = java.io.File.new(path)
    img = javax.imageio.ImageIO.read(file)    
    
    create_empty(img.getHeight(), img.getWidth())
    
    # loading channels of colors with image content
    0.upto img.getHeight()-1 do |r|
      0.upto img.getWidth()-1 do |c|
        px = img.getRGB(c, r)
        @rch[r][c] = ((px << 8) >> 24) & 0xff
        @gch[r][c] = ((px << 16) >> 24) & 0xff
        @bch[r][c] = ((px << 24) >> 24) & 0xff
      end
    end
    
    nil
  end
  
  #import 'java.awt.image.BufferedImage.*'

  def write(path)
    #translate channels of colors to BufferedImage object
    bufferedImage = java.awt.image.BufferedImage
    img = java.awt.image.BufferedImage.new(columns(), rows(), bufferedImage::TYPE_INT_RGB)
    #p rows().to_s + ' ' + columns().to_s
    0.upto rows()-1 do |r|
      0.upto columns()-1 do |c|
        #p r.to_s + ' ' + c.to_s 
        px = (((@rch[r][c] << 8) | @gch[r][c]) << 8) | @bch[r][c]
        img.setRGB(c, r, px)
      end
    end
    
    #write to file
    file = java.io.File.new(path)
    javax.imageio.ImageIO.write(img, "jpeg", file)
  end
  

  def rows
    @rch.size
  end
  
  def columns
    @rch[0].size
  end
  
end