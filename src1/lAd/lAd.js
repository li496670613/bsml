/**
 * Created by Administrator on 2016/7/19.
 */
function init(me, data) {
    if (!data.poiInfo.photo_list.env || data.poiInfo.photo_list.env.length < 1) {
        me.tpl = null;
    }
}