#strassenschraenke {
    [man_made = 'street_cabinet'][zoom >= 20] {
       marker-height: 10px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/Power_cable_distribution_cabinet.svg');
       [zoom = 21] {
             marker-height: 30px;
       }
       [zoom >= 22] {
             marker-height: 40px;
       }
    }
}