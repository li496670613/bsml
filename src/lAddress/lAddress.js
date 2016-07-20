/**
 * Created by Administrator on 2016/7/18.
 */
function bindEvents(me) {
    if (!me.data.poi.poiInfo || !me.data.poi.mapInfo) {
        return;
    }
    var $main = $(me.main);
    var url = 'bainuo://panorama?uid=' + me.data.poi.mapInfo.BID;
    var merchantMapUrl = 'bainuo://merchantmap?shopid='
        + me.data.poi.poiInfo.poi_id;
    $main
        .on('click', '.address-info-add a', function() {
            BNJS.page.start('bainuo://merchantmap?shopid=' + me.data.poi.poiInfo.poi_id, null, 0);
        })
    .on('click', '.l-poi-address-info>span ', function() {
        BNJS.page.start(url, {}, 0);
    })
}