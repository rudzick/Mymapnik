#strauch [zoom >= 19] {
  ::canopy {
    opacity: 0.45;
    [natural = 'shrub_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 20] {
        line-width: 5;
      }
      [zoom >= 21] {
        line-width: 10;
      }
      [zoom >= 22] {
        line-width: 15;
      }
      [zoom >= 23] {
        line-width: 30;
      }
    }
    [natural = 'shrub'] {
      [zoom >= 21] {
        marker-fill: green;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-ignore-placement: true;
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 22] {
        marker-width: 15;
        marker-height: 15;
     }
      [zoom >= 23] {
        marker-width: 20;
        marker-height: 20;
      }
    }
  }
}
