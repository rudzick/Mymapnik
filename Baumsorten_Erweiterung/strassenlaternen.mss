#strassenlaternen {
    [highway = 'street_lamp'][zoom >= 20] {
       marker-height: 8px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/noun-street-light-3755.svg');
       [zoom = 21] {
             marker-height: 12px;
       }
       [zoom >= 22] {
             marker-height: 15px;
       }
       [zoom >= 23] {
             marker-height: 25px;
       }
    }
}