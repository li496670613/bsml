/**
 *
 */
function bindEvents(me) {
    var $main = $(me.main);
    $main.on('click', '.bus-info', function() {
        var merchantId = me.rt.getParams()['merchant_id'];
        me.rt.open(me.properties.target, {
            merchant_id: merchantId
        }, 0);
    });
}