/**
 *
 */

/**
 *
 */
function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.check-more', function() {
            $('.bus-info').removeClass('content-hide');
            $(this).remove();
        });

    $(".bus-detail-info-l").each(function(){
        var saveM=parseInt($(this).find(".market_price").text()-$(this).find(".current_price").text());
        $(this).find(".save_price").html(saveM+".00");
    })

}