function init(me, data) {
    if (!data.tuanList || !data.tuanList.length) {
        me.tpl = null;
    }

    for (var i = 0; i < me.data.sales.tuanList.length; i++) {
        me.data.sales.tuanList[i].current_price = Math.ceil(me.data.sales.tuanList[i].current_price / 100);
        me.data.sales.tuanList[i].market_price = Math.ceil(me.data.sales.tuanList[i].market_price / 100);
    }
}


function bindEvents(me) {
    var $main = $(me.main);
    $main.on('click', '.check-more', function() {
        $('.bus-info').removeClass('content-hide');
        $(this).remove();
    });

    $(".bus-detail-info-l").each(function() {
        var saveM = parseInt($(this).find(".market_price").text()) - parseInt($(this).find(".current_price").text());
        $(this).find(".save_price").html(saveM + ".00");
    })
}