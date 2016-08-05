function bindEvents(me) {
    var $main = $(me.main);
    $main.on('click', '.check-more', function() {
        $('.wedding-services-item li').removeClass('content-hide');
        $(this).remove();
    });


    var $main = $(me.main);
    $(me.main).on('click', '.we-services>b', function() {
        $('.wd-hd-phone').trigger("touch");
    });
}