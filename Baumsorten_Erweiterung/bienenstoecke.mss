#bienenstoecke {
  [landuse = 'apiary'][zoom >= 21],
  [man_made = 'beehive'][zoom >= 21],
  [craft = 'beekeeper'][zoom >= 21] {
     marker-file: url('openclipart/svg/animals/bugs/bee.svg');
     marker-placement: interior;
     marker-clip: false;
   }
}
