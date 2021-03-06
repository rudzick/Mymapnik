#baumsorten_zoom_21 {
    text-name: "[obstbaumart]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: green;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [zoom = 19] {
      text-dy: 8;
      text-size: 8;
    }
    [zoom = 20] {
      text-dy: 16;
      text-size: 11;
    }
    [zoom = 21] {
      text-dy: 16;
      text-size: 16;
    }
}
#baumsorten_zoom_22 {
    text-name: "[obstbaumart]";
    text-size: 18;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-wrap-character: '_';
    text-fill: green;
    text-dy: 18;
    [zoom >= 23] {
        text-dy: 18;
	text-size: 22;
        text-wrap-width: 200;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
}
#taxon {
    text-name: "[obstbaumsorte]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: green;
    text-dy: 26;
    text-size: 14;
    [zoom = 19] {
       text-dy: 15;
       text-size: 6;
    }
    [zoom = 20] {
       text-dy: 27;
       text-size: 9;
    }
    [zoom = 21] {
       text-dy: 32;
       text-size: 12;
    }
    [zoom >= 22] {
        text-wrap-width: 1000;
        text-dy: 38;
        text-size: 14;
    }
    [zoom >= 23] {
        text-dy: 43;
	text-size: 20;
    }
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
}
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
