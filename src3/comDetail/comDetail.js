/**
 * @file 本地直通车-自定主题套餐
 *
 * @author 齐顺利(qishunli@baidu.com)
 * 2016年06月20日
 */

function init(widget) {
}

function bindEvents(widget) {
     var me = widget;
     var dealId = +me.rt.getParams()['deal_id'];
     var merchantId = me.rt.getParams()['merchant_id'];
     var $main = $(me.main);
     $main.on('click', '.zhitc-serve-detail-link', function() {
          var pageId = 'serveImgDetail';
          var target = 'img';
          BNJS.statistic.addLog({
               actionID: 'zhitc_introduce_click',
               actionExt: '直通车店铺页服务详情页服务介绍点击',
               note: {
                    ComExtraParams: JSON.stringify({
                         title: me.rt.getProjectData().title,
                         pageId: me.rt.getPageInfo().name,
                         merchant_id: merchantId,
                         deal_id: dealId
                    })
               }
          });
          me.rt.open(pageId, {
               target: target,
               merchant_id: merchantId,
               deal_id: dealId,
               city_id: BNJS.location.cityCode || 100010000
          }, 0);
     });
}
