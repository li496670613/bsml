/**
 * @file 本地直通车-自定主题套餐
 *
 * @author 齐顺利(qishunli@baidu.com)
 * 2016年06月20日
 */

function init(widget) {
        var me = widget;
        me.data.detailInfo = {};
        me.data.detailInfo.photoList = me.data.detail.imageList ? me.data.detail.imageList.content : [];
        me.data.detailInfo.name = me.data.detail.name ? me.data.detail.name.content : '';
        me.data.detailInfo.tags = me.data.detail.tags ? me.data.detail.tags.content : '';
}

function bindEvents(widget) {
    var me = widget;
    $(me.main)
    .on('click', '.zhitc-class-detail-more', function () {
        $('.zhitc-class-detail-content').removeClass('zhitc-class-detail-content-hide');
        $(this).remove();
    });
}
