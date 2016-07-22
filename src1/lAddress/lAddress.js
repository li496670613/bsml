/**
 * Created by Administrator on 2016/7/18.
 */
function bindEvents(me) {
    if (!me.data.poi.poiInfo || !me.data.poi.mapInfo) {
        return;
    }
    var $main = $(me.main);
    var url = 'bainuo://panorama?uid=' + me.data.poi.mapInfo.BID;
    var merchantMapUrl = 'bainuo://merchantmap?shopid=' + me.data.poi.poiInfo.poi_id;
    $main.on('click', '.head-address ', function() {
            BNJS.page.start(merchantMapUrl, {}, 0);
            return false;
        })
        .on('click', '.head-phone', function() {
            $('body').trigger('callPhone', {
                phoneList: me.data.poi.poiInfo.phone.split('|')
            });
        });
}

