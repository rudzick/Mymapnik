#wuchs {
  [zoom >= 22] {
    text-name: [geschlecht] + ' ' + [wuchs] + ' ' + [baumalter];
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: brown;
    text-opacity: 0.75;
    text-dy: 16;
    text-size: 14;
    [zoom >= 22] {
        text-dy: 57;
        text-size: 14;
    }
    [zoom >= 23] {
        text-dy: 63;
        text-size: 20;
    }    
    [obstbaumsorte = '0']{
       [zoom >= 22] {
           text-dy: 38;
           text-size: 14;
       }
       [zoom >= 23] {
           text-dy: 43;
           text-size: 20;
       }
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }
}
