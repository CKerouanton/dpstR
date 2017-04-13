# dpstR
Douglas-Peucker Spatio-Temporal algorithm for trajectory generalization

## Douglas-Peucker spatio-temporal algorithm

This algorithm is usually adopted for polylines generalization, but it can be applied to trajectories. Originally working with spatial coordinates, several authors utilize a spatio-temporal version of the algorithme (L. Etienne, 2011 ; Zheng & Zhou, 2011). The two functions described here are from Laurent Etienne Phd and from R package "kmlshape".

## Function

Two functions are needed to compute Douglas-Peucker spatio-temporal algorithm : 
The 'DPST' function is extracted from kmlShape function "DouglasPeuckerEpsilon". It takes for inputs spatial coordinates, time. The parameter epsilon is the distance between original trajectory and new trajectory segments, for which generalization stops. 
The 'furhtest' function looks for the furthest point to the tested trajectory segment, with a spatio-temporal projection

## References

Etienne, L. (2011). Motifs spatio-temporels de trajectoires d'objets mobiles, de l'extraction à la détection de comportements inhabituels. Application au trafic maritime (Doctoral dissertation, Université de Bretagne occidentale-Brest).
Zheng, Y., & Zhou, X. (Eds.). (2011). Computing with spatial trajectories. Springer Science & Business Media.
