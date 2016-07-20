function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.check-more', function() {
        $('.topic-item').removeClass('content-hide');
        $(this).remove();
    });
}