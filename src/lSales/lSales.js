/**
 * Created by Administrator on 2016/7/18.
 */
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
    $main .on('click', '.serve-more', function() {
        $('.boutique-list li').removeClass('content-hide');
        $(this).remove();
    });
}