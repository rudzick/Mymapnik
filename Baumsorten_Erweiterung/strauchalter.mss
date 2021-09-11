#strauchalter {
  [zoom >= 22] {
    text-name: [beschreibung] + "\n" + [geschlecht] + "\n"  + [strauchalter];
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-wrap-character: "\n";
    text-line-spacing: @standard-line-spacing-size;
    text-fill: brown;
    text-opacity: 0.75;
    text-dy: 16;
    text-size: 14;
    [zoom >= 22] {
        text-dy: 20;
        text-size: 9;
	text-wrap-width: 45;
    }
    [zoom >= 23] {
        text-dy: 30;
	text-size: 11;
        text-wrap-width: 65;
    }
    [zoom >= 24] {
        text-dy: 32;
	text-size: 12;
        text-wrap-width: 65;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }
}
