#hydranten {
    text-face-name: @standard-font;
    opacity: 1.0;
 /*   text-name: [hydranttyp]; */
    marker-height: 8;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: 'red';
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    marker-placement: interior;
    marker-clip: false;
    marker-file: url('extra_symbols/Emergency_fire_hydrant.svg');
    [zoom >= 21] {
          marker-height: 12;
  /*        text-size: 10;
          text-dy: 9;
          text-name:  [hydranttyp] + [standort] + [nenndurchmesser]; */
    }
}