#bienenstoecke {
  [landuse = 'apiary'][zoom >= 20],
  [man_made = 'beehive'][zoom >= 20],
  [craft = 'beekeeper'][zoom >= 20] {
     marker-file: url('extra_symbols/ID-man-made-beehive.svg');
     marker-placement: interior;
     marker-clip: false;
     [zoom = 20] {
         marker-height: 6px;
     }
   }
}
