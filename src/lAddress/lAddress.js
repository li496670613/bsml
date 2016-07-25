/**
 * Created by Administrator on 2016/7/18.
 */
function bindEvents(me) {
    if (!me.data.poi.poiInfo || !me.data.poi.mapInfo) {
        return;
    }
    var $main = $(me.main);
    var merchantMapUrl = 'bainuo://merchantmap?shopid=' + me.data.poi.poiInfo.poi_id;
    $main
        .on('click', '.address-info-add span', function() {
            BNJS.page.start(merchantMapUrl, null, 0);
        })
        .on('click', '.l-poi-address-info>span', function() {
            $('body').trigger('callPhone', {
                phoneList: me.data.poi.poiInfo.phone.split('|')
            });
        });
    if (me.data.poi.mapInfo.BID) {
        var url = 'bainuo://panorama?uid=' + me.data.poi.mapInfo.BID;
        $main.on('click', '.address-info-add>.look-all ', function() {
            BNJS.page.start(url, {}, 0);
            return false;
        });
    }
}