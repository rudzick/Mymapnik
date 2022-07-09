#bienenstoecke {
  [landuse = 'apiary'][zoom >= 20],
  [man_made = 'beehive'][zoom >= 20],
  [craft = 'beekeeper'][zoom >= 20] {
     marker-file: url('openclipart/svg/animals/bugs/bee.svg');
     marker-placement: interior;
     marker-clip: false;
     [zoom = 20] {
         marker-transform: matrix (0.6, 0, 0, 0.6, 0, 0);
     }
   }
}
