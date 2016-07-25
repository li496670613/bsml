/**
 *
 */
function init(me, data) {
    if (!me.data.services) {
        return;
    }
    for (var i = 0; i < me.data.services.length; i++) {
        me.data.services[i].bookingCount = me.data.services[i].bookingCount ? me.data.services[i].bookingCount : 0;
    }
}
/**
 *
 */
function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.serve-more', function() {
            $('.package-list li').removeClass('content-hide');
            $(this).remove();
        });
    $main.on('click', '.checks', function() {
        var merchantId = me.rt.getParams()['merchant_id'];
        me.rt.open(me.properties.target, {
            merchant_id: merchantId
        }, 0);
    });
}