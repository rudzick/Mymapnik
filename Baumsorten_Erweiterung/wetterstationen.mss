#wetterstationen {
    [man_made = 'monitoring_station'][wetterstation = 'yes'][zoom >= 20] {
       marker-height: 10px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/Anemometer_-_The_Noun_Project.svg');
       [zoom = 21] {
             marker-height: 20px;
             text-name:  [stationsname]  + ' ' + [nummer] + ' ' + [wmo_id] + ' ' + [betreiber];
             text-wrap-character: ' ';
             text-face-name: @standard-font;
             text-wrap-width: 10;
             text-line-spacing: @standard-line-spacing-size;
             /* text-fill: '#35412E'; */
             text-halo-radius: @standard-halo-radius;
             text-halo-fill: @standard-halo-fill;
             text-placement: interior;
             text-size: 12;
             text-dy: 11;
       }
       [zoom >= 22] {
             marker-height: 40px;
             text-name:  [stationsname]  + '\n' + [nummer] + '\n' + [wmo_id] + '\n' + [betreiber];
             text-wrap-character: 'U+200A';
             text-face-name: @standard-font;
             text-wrap-width: 10;
             text-line-spacing: @standard-line-spacing-size;
             /* text-fill: '#35412E'; */
             text-halo-radius: @standard-halo-radius;
             text-halo-fill: @standard-halo-fill;
             text-placement: interior;
             text-size: 12;
             text-dy: 25;
       }
    }
}