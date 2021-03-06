require "FImg4R_Noise"

class Lab
  
  def run(img_fn, out_fn)
    #patterns
#=begin
    FImg4R.new(img_fn).salt_pepper(0.05).write("4/out/#{out_fn}saltpepper005.jpg")
    FImg4R.new(img_fn).salt_pepper(0.1).write("4/out/#{out_fn}saltpepper01.jpg")
    FImg4R.new(img_fn).salt_pepper(0.15).write("4/out/#{out_fn}saltpepper015.jpg")
#=end
    
#=begin
    FImg4R.new(img_fn).regular_noise(0.05).write("4/out/#{out_fn}regular_noise005.jpg")
    FImg4R.new(img_fn).regular_noise(0.1).write("4/out/#{out_fn}regular_noise01.jpg")
    FImg4R.new(img_fn).regular_noise(0.15).write("4/out/#{out_fn}regular_noise015.jpg")
    FImg4R.new(img_fn).regular_noise(0.35).write("4/out/#{out_fn}regular_noise035.jpg")
#=end
    
#=begin
    FImg4R.new(img_fn).regular_noise(0.05, false).write("4/out/#{out_fn}regular_noise_ch005.jpg")
    FImg4R.new(img_fn).regular_noise(0.1, false).write("4/out/#{out_fn}regular_noise_ch01.jpg")
    FImg4R.new(img_fn).regular_noise(0.15, false).write("4/out/#{out_fn}regular_noise_ch015.jpg")
    FImg4R.new(img_fn).regular_noise(0.35, false).write("4/out/#{out_fn}regular_noise_ch035.jpg")
#=end
    
    
    #median filter
#=begin
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").median_filter(3).write("4/out/{out_fn}saltpepper005__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").median_filter(5).write("4/out/#{out_fn}saltpepper005__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").median_filter(7).write("4/out/#{out_fn}saltpepper005__median_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").median_filter(3).write("4/out/#{out_fn}saltpepper01__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").median_filter(5).write("4/out/#{out_fn}saltpepper01__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").median_filter(7).write("4/out/#{out_fn}saltpepper01__median_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").median_filter(3).write("4/out/#{out_fn}saltpepper015__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").median_filter(5).write("4/out/#{out_fn}saltpepper015__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").median_filter(7).write("4/out/#{out_fn}saltpepper015__median_filter7.jpg")
#=end
    
#=begin
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").median_filter(3).write("4/out/#{out_fn}regular_noise01__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").median_filter(5).write("4/out/#{out_fn}regular_noise01__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").median_filter(7).write("4/out/#{out_fn}regular_noise01__median_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").median_filter(3).write("4/out/#{out_fn}regular_noise035__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").median_filter(5).write("4/out/#{out_fn}regular_noise035__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").median_filter(7).write("4/out/#{out_fn}regular_noise035__median_filter7.jpg")
#=end
    
#=begin
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").median_filter(3).write("4/out/#{out_fn}regular_noise_ch01__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").median_filter(5).write("4/out/#{out_fn}regular_noise_ch01__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").median_filter(7).write("4/out/#{out_fn}regular_noise_ch01__median_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").median_filter(3).write("4/out/#{out_fn}regular_noise_ch035__median_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").median_filter(5).write("4/out/#{out_fn}regular_noise_ch035__median_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").median_filter(7).write("4/out/#{out_fn}regular_noise_ch035__median_filter7.jpg")
#=end
    
    
    
    #median filter limited
#=begin
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").median_filter_limited(3).write("4/out/#{out_fn}saltpepper005__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").median_filter_limited(5).write("4/out/#{out_fn}saltpepper005__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").median_filter_limited(7).write("4/out/#{out_fn}saltpepper005__median_filter_limited7.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").median_filter_limited(3).write("4/out/#{out_fn}saltpepper01__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").median_filter_limited(5).write("4/out/#{out_fn}saltpepper01__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").median_filter_limited(7).write("4/out/#{out_fn}saltpepper01__median_filter_limited7.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").median_filter_limited(3).write("4/out/#{out_fn}saltpepper015__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").median_filter_limited(5).write("4/out/#{out_fn}saltpepper015__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").median_filter_limited(7).write("4/out/#{out_fn}saltpepper015__median_filter_limited7.jpg")
#=end
    
#=begin
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").median_filter_limited(3).write("4/out/#{out_fn}regular_noise01__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").median_filter_limited(5).write("4/out/#{out_fn}regular_noise01__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").median_filter_limited(7).write("4/out/#{out_fn}regular_noise01__median_filter_limited7.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").median_filter_limited(3).write("4/out/#{out_fn}regular_noise035__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").median_filter_limited(5).write("4/out/#{out_fn}regular_noise035__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").median_filter_limited(7).write("4/out/#{out_fn}regular_noise035__median_filter_limited7.jpg")
#=end
    
#=begin
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").median_filter_limited(3).write("4/out/#{out_fn}regular_noise_ch01__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").median_filter_limited(5).write("4/out/#{out_fn}regular_noise_ch01__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").median_filter_limited(7).write("4/out/#{out_fn}regular_noise_ch01__median_filter_limited7.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").median_filter_limited(3).write("4/out/#{out_fn}regular_noise_ch035__median_filter_limited3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").median_filter_limited(5).write("4/out/#{out_fn}regular_noise_ch035__median_filter_limited5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").median_filter_limited(7).write("4/out/#{out_fn}regular_noise_ch035__median_filter_limited7.jpg")
#=end
    
    
    
    #average filter
#=begin
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").average_filter(3).write("4/out/#{out_fn}saltpepper005__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").average_filter(5).write("4/out/#{out_fn}saltpepper005__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper005.jpg").average_filter(7).write("4/out/#{out_fn}saltpepper005__average_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").average_filter(3).write("4/out/#{out_fn}saltpepper01__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").average_filter(5).write("4/out/#{out_fn}saltpepper01__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper01.jpg").average_filter(7).write("4/out/#{out_fn}saltpepper01__average_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").average_filter(3).write("4/out/#{out_fn}saltpepper015__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").average_filter(5).write("4/out/#{out_fn}saltpepper015__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}saltpepper015.jpg").average_filter(7).write("4/out/#{out_fn}saltpepper015__average_filter7.jpg")
#=end
    
#=begin
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").average_filter(3).write("4/out/#{out_fn}regular_noise01__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").average_filter(5).write("4/out/#{out_fn}regular_noise01__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise01.jpg").average_filter(7).write("4/out/#{out_fn}regular_noise01__average_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").average_filter(3).write("4/out/#{out_fn}regular_noise035__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").average_filter(5).write("4/out/#{out_fn}regular_noise035__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise035.jpg").average_filter(7).write("4/out/#{out_fn}regular_noise035__average_filter7.jpg")
#=end
    
#=begin
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").average_filter(3).write("4/out/#{out_fn}regular_noise_ch01__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").average_filter(5).write("4/out/#{out_fn}regular_noise_ch01__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch01.jpg").average_filter(7).write("4/out/#{out_fn}regular_noise_ch01__average_filter7.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").average_filter(3).write("4/out/#{out_fn}regular_noise_ch035__average_filter3.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").average_filter(5).write("4/out/#{out_fn}regular_noise_ch035__average_filter5.jpg")
    FImg4R.new("4/out/#{out_fn}regular_noise_ch035.jpg").average_filter(7).write("4/out/#{out_fn}regular_noise_ch035__average_filter7.jpg")
#=end
  end
end
