function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.check-more', function() {
        $('.item-show').removeClass('content-hide');
        $(this).remove();
    });
}