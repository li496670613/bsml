function init(me, data) {
    me.data.city_id = BNJS.location.cityCode || 100010000;
    me.data.poi.poiInfo.per_price = Math.ceil(me.data.poi.poiInfo.per_price/100);
}

function bindEvents(me) {
    var PAY = 'bainuo://component?compid=t10pay&comppage=order';
    if (BNJS && BNJS.env && BNJS.env.appName && BNJS.env.appName === 'bainuo-wap') {
        PAY = 'http://t10sc.nuomi.com/paynow/wap/order';
    }
    var $main = $(me.main);
    if (me.data.poi.poiInfo) {
        $main.on('click', '.lShophoursA-pay-btn', function() {
            BNJS.page.start(PAY, {
                merchant_id: me.rt.getParams()['merchant_id'],
                city_id: BNJS.location.cityCode || 100010000,
                from: 'merchant_detail',
                channel: 'nuomi',
                tiny_url: me.data.poi.poiInfo.shoping_tiny_url
            }, 0);
        })
    }
}