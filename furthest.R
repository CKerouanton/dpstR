
################## FURTHEST ##############################################
# Euclidean distance with spatio-temporal projection. Use general speed from p1 to pn to project inbetween points pi 
# with a distance estimation thanks to pi time.
#
# inputs
# p1 = trajectory first point (x,y)
# p2 = trajectory last point (x,y)
# t1 = p1 time
# t2 = p2 time
#
# outputs
# [1] dmax = distance max found in points pi, to the segment p1-p2
# [2] id = index of the point pi for which distance is dmax


furthest = function(trajx, trajy, time, n){
  p1 = cbind(trajx[1],trajy[1]) 
  p2 = cbind(trajx[n], trajy[n])
  t1 = time[1]
  t2 = time[n]
  
  d1 = as.numeric(dist(rbind(p1, p2)))
  t3 = t2 - t1
  vd = d1/t3
  dmax = 0

  for (i in 2:(n-1)){
    pi = cbind(trajx[i], trajy[i])
    ti = time[i] - t1
    
    # distance estimation using mean speed and time at i
    di = vd*ti
    ratio = di/d1
   
    # spatio temporal projection on segment p1p2
    xi = p1[1] - (ratio*(p1[1]-p2[1]))
    yi = p1[2] - (ratio*(p1[2]-p2[2]))
    
    pii = cbind(xi, yi)
    
    # distance between real point pi and projected point pii
    d = as.numeric(dist(rbind(pi, pii)))
    
    if (d > dmax){
      #     dmax = d
      dmax = d
      #     pmax = Pi
      id = i
    }
  }
  return(c(dmax, id))
}
