/**
 * @file 本地直通车-自定主题套餐
 *
 * @author 齐顺利(qishunli@baidu.com)
 * 2016年06月20日
 */

function init(widget) {

     widget.data.detailInfo = {};
     widget.data.detailInfo.startPrice = widget.data.detail.startPrice.content ? widget.data.detail.startPrice.content : '';
     widget.data.detailInfo.endPrice = widget.data.detail.endPrice.content ? widget.data.detail.endPrice.content : '';
}

function bindEvents(widget) {

}
