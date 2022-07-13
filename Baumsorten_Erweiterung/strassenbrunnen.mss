#strassenbrunnen {
    [man_made = 'water_well'][pumpe = 'manual'][zoom >= 20] {
       marker-height: 10px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/Straßenbrunnen_modern_Silhouette.png');
       [pumpenstil = 'historic'] {
              marker-file: url('extra_symbols/Wappenschildgehäuse_Silhouette.png');
       }
       [pumpenstil = 'Lauchhammer'] {
              marker-file: url('extra_symbols/Lauchhammerbrunnen_Silhouette.png');
       }
       [pumpenstil = 'Krause'] {
              marker-file: url('extra_symbols/Krausebrunnen_Silhouette.png');
       }
       [pumpenstil = 'Pankow'] {
              marker-file: url('extra_symbols/Wappenschildgehäuse_Silhouette.png');
       }
       [pumpenstil = 'Rümmler'] {
              marker-file: url('extra_symbols/Schliephackepumpe_Silhouette.png');
       }
       [pumpenstil = 'Borsig'] {
              marker-file: url('extra_symbols/Sechseckgehäuse_Silhouette.png');
       }
       [zoom >= 21] {
             marker-height: 20px;
             text-name:  [nummer] + ' ' + [pumpenstil];
             text-face-name: @standard-font;
             text-wrap-width: 10;
             text-line-spacing: @standard-line-spacing-size;
             text-fill: '#35412E';
             text-halo-radius: @standard-halo-radius;
             text-halo-fill: @standard-halo-fill;
             text-placement: interior;
             text-size: 12;
             text-dy: 13;
       }
    }
}