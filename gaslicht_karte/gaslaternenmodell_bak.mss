#gaslaternen_modell {
   text-face-name: @standard-font;
   opacity: 1.0;
   text-name: [modell];

   opacity: 1.0;
   marker-fill: @gaslaternenlabel-color;
   marker-allow-overlap: true;
   marker-line-width: 0;
   marker-ignore-placement: true;
   marker-type: ellipse;
   marker-width: 10;
   marker-height: 10;

   [zoom >= 18] {
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-wrap-character: '&';
        text-fill: @gaslaternenlabel-color;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-placement: interior;
        marker-placement: interior;
        marker-clip: false;
     }
   [zoom > 20] {
      text-name: [flammen] + [modell] + [nummer] + [mastform];
//      [nummer != ''][modell != ''] {
//      	text-name: [flammen] + [modell] + ' - ' + [nummer] + [mastform];
//      }
   }   
   [zoom >= 18][zoom < 19] {
	text-size: 9;
        text-dy: 14;
   }
   [zoom >= 19][zoom < 20] {
	text-size: 15;
        text-dy: 23;
   }
   [zoom >= 20][zoom < 21] {
	text-size: 20;
        text-dy: 128;
   }
   [zoom >= 21][zoom < 22] {
	text-size: 25;
        text-dy: 128;
   }
   [zoom >= 22] {
        text-size: 30;
        text-dy: 128;
   }
   [modell = 'Aufsatzleuchte BAMAG U7'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {
          marker-file: url('gaslaternen/bln/14px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/14px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');
        }
     }
     [zoom >= 19][zoom < 20] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/20px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/20px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');	
        }
     }
     [zoom >= 20] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/120px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/120px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');
        }
     }
   }
   [modell = 'Reihenleuchte BAMAG U13H'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/54px_Reihenleuchte_BAMAG_U13H_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/54px_Reihenleuchte_BAMAG_U13H_nacht.jpg');
        }
     }
     [zoom >= 19][zoom < 20] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/80px_Reihenleuchte_BAMAG_U13H_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/80px_Reihenleuchte_BAMAG_U13H_nacht.jpg');
        }
     }
     [zoom >= 20] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/Reihenleuchte_BAMAG_U13H_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/Reihenleuchte_BAMAG_U13H_nacht.jpg');
        }
     }
   }
   [modell = 'Aufsatzleuchte'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Aufsatzleuchte.jpg');
        }
     [zoom >= 19][zoom < 20] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Aufsatzleuchte.jpg');
        }
     [zoom >= 20] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Aufsatzleuchte.jpg');
        }
   }
   [modell = 'Ansatzleuchte'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Ansatzleuchte.jpg');
        }
     [zoom >= 19][zoom < 20] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Ansatzleuchte.jpg');
        }
     [zoom >= 20] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Ansatzleuchte.jpg');
        }
   }
   [modell = 'Reihenleuchte'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Reihenleuchte.jpg');
        }
     [zoom >= 19][zoom < 20] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Reihenleuchte.jpg');
        }
     [zoom >= 20] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Reihenleuchte.jpg');
        }
   }
   [modell = 'Alt-Düsseldorfer'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Alt-Duesseldorfer.jpg');
        }
     [zoom >= 19][zoom < 20] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Alt-Duesseldorfer.jpg');
        }
     [zoom >= 20] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Alt-Duesseldorfer.jpg');
        }
   }
   [modell = 'Frankfurter'] {
     marker-width: 0;
     marker-height: 0;
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Frankfurter.jpg');
        }
     [zoom >= 19][zoom < 20] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Frankfurter.jpg');
        }
     [zoom >= 20] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Frankfurter.jpg');
        }
    }
}