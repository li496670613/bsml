function init(me, data) {
    if (!me.data.services) {
        return;
    }
    for (var i = 0; i < me.data.services.length; i++) {
        me.data.services[i].bookingCount = me.data.services[i].bookingCount ? me.data.services[i].bookingCount : 0;
    }
}

function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.check-more', function() {
        $('.item-show').removeClass('content-hide');
        $(this).remove();
    });
}