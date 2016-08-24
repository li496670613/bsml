function init(me, data) {
    if (!data.tuanList || !data.tuanList.length) {
        me.tpl = null;
    }

    for (var i = 0; i < me.data.sales.tuanList.length; i++) {
        me.data.sales.tuanList[i].current_price = Math.ceil(me.data.sales.tuanList[i].current_price / 100);
        me.data.sales.tuanList[i].market_price = Math.ceil(me.data.sales.tuanList[i].market_price / 100);
    }
}