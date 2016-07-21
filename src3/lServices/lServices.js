/**
 * Created by Administrator on 2016/7/21.
 */
function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.check-more', function() {
        $('.wedding-services-item li').removeClass('content-hide');
        $(this).remove();
    });


    var $main = $(me.main);
    $main.on('click', '.we-services>b', function() {
            $('body').trigger('callPhone', {
                phoneList: me.data.poi.poiInfo.phone.split('|')
            });
        });
}