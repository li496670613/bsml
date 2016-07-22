function init(me, data) {
    me.data.city_id = BNJS.location.cityCode || 100010000;
    me.data.poi.poiInfo.per_price = Math.ceil(me.data.poi.poiInfo.per_price/100);
}

function bindEvents(me) {
    var score = me.data.poi.scoreInfo;
    var scoreStyle = score.average_score ? score.average_score * 0.328 + 'rem' : score.average_score + 'px';
    var average_score = Math.round(score.average_score * 10) / 10;
    $(".l-poi-hd-info-score-empty").css({
        "width": scoreStyle
    });
    $(".l-poi-hd-info-score-count").html(average_score);
    $(me.wrapper).find('.l-poi-header-box-img').click(function() {
        url = 'bainuo://component?compid=merchants&comppage=photos';
        BNJS.page.start(url, {merchantId: me.data.poi.poiInfo.poi_id}, 0);
    });

    var PAY = 'bainuo://component?compid=t10pay&comppage=order';
    if (BNJS && BNJS.env && BNJS.env.appName && BNJS.env.appName === 'bainuo-wap') {
        PAY = 'http://t10sc.nuomi.com/paynow/wap/order';
    }
    var $main = $(me.main);
    if (me.data.poi.poiInfo) {
        $main.on('click', '.l-poi-header-info-pay-btn', function() {
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