# dpstR
Douglas-Peucker Spatio-Temporal algorithm for trajectory generalization

## Douglas-Peucker spatio-temporal algorithm

This algorithm is usually adopted for polylines generalization (a simple explaination can be found  <a href=https://github.com/zimmicz/simpline.wiki.git> here </a>), and it can be applied to trajectories. Originally working with spatial coordinates, several authors utilize a spatio-temporal version of the algorithme (<a href=https://tel.archives-ouvertes.fr/file/index/docid/667953/filename/these_etienne.pdf> L. Etienne, 2011 </a> ; <a href=https://www.microsoft.com/en-us/research/wp-content/uploads/2011/11/TrajectoryComputing_Preview.pdf> Zheng & Zhou, 2011 </a> ). The two functions described here are from Laurent Etienne Phd and from R package "kmlshape".

## Function

Two functions are needed to compute Douglas-Peucker spatio-temporal algorithm : 
The 'DPST' function is extracted from kmlShape function <a href= kmlShape/man/DouglasPeucker.Rd > 'DouglasPeuckerEpsilon </a>. It takes for inputs spatial coordinates, time. The parameter epsilon is the distance between original trajectory and new trajectory segments, for which generalization stops. 
The 'furhtest' function looks for the furthest point to the tested trajectory segment, with a spatio-temporal projection

## References

Etienne, L. (2011). Motifs spatio-temporels de trajectoires d'objets mobiles, de l'extraction à la détection de comportements inhabituels. Application au trafic maritime (Doctoral dissertation, Université de Bretagne occidentale-Brest).
Zheng, Y., & Zhou, X. (Eds.). (2011). Computing with spatial trajectories. Springer Science & Business Media.
