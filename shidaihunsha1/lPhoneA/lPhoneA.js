function bindEvents(me) {
    var $main = $(me.main);
    $main
        .on('click',function() {
            $('body').trigger('callPhone', {
                phoneList: me.data.poi.poiInfo.phone.split('|')
            });
        });
}