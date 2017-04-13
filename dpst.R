# from Laurent Etienne PhD and from R package "kmlshape"

DPST = function(trajx, trajy, time, epsilon){
  
  n <- length(trajx)
  
  
  missings <- is.na(trajx)|is.na(trajy)
  if(any(missings)){
    trajx <- trajx[!missings]
    trajy <- trajy[!missings]
  }else{}
  
  
  farestPoint <- furthest(trajx, trajy, time, n)
  index <- farestPoint[2]
  end <- length(trajx)
  if ( farestPoint[1] > epsilon ) {
    recResults1 = DPST(trajx[1:index], trajy[1:index], time[1:index], epsilon)
    recResults2 = DPST(trajx[index:end], trajy[index:end], time[index:end], epsilon)
    
    resultTrajx = c(recResults1$x,recResults2$x[-1])
    resultTrajy = c(recResults1$y,recResults2$y[-1])
    resultTrajt = c(recResults1$t, recResults2$t[-1])
  } else {
    resultTrajx = c(trajx[1],trajx[end])
    resultTrajy = c(trajy[1],trajy[end])
    resultTrajt = c(time[1], time[end])
  }
  return(data.frame(x=resultTrajx,y=resultTrajy, t = resultTrajt))
}
