function init(me) {
    var distance = Math.round(me.data.poi.poiInfo.distance);
    me.data.poi.poiInfo.distance = null;
    if (distance === -1) {
        return;
    }
    if (0 < distance && distance < 1000) {
        me.data.poi.poiInfo.distance = distance + 'm'
    } else if (distance <= 99000) {
        me.data.poi.poiInfo.distance = Math.round(distance / 100) / 10 + 'km';
    } else {
        me.data.poi.poiInfo.distance = '99+km';
    }
}

function bindEvents(me) {
    if (!me.data.poi.poiInfo || !me.data.poi.mapInfo) {
        return;
    }
    var $main = $(me.main);
    var url = 'bainuo://panorama?uid=' + me.data.poi.mapInfo.BID;
    var merchantMapUrl = 'bainuo://merchantmap?shopid=' + me.data.poi.poiInfo.poi_id;
    $main.on('click', '.wd-hd-info-address-address', function() {
        BNJS.page.start(merchantMapUrl, null, 0);
    }).on('click', '.wd-hd-info-address-map ', function() {
        BNJS.page.start(url, {}, 0);
        return false;
    });
}