def thresholding_avl_g( peaces=1, tol=0 )    
  avr_glob = average()
  avr_min = avr_glob - tol * avr_glob
  avr_max = avr_glob + tol * avr_glob
  #TODO better way
  avr_min, avr_max = [ avr_min, avr_max ].collect! do |a|
    cut( a.floor )
  end    
  thresholding_avl( peaces, avr_min, avr_max )
end
