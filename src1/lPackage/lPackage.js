/**
 *
 */

/**
 *
 */
function init(me) {

}
function bindEvents(me) {
    for(var i=1;i<$(".project-item-info-title").length+1;i++){
        $(".project-item-info-title em").eq(i-1).html("0"+i);
    }
    var $main = $(me.main);
    $main .on('click', '.check-more', function() {
        $('.project-item').removeClass('content-hide');
        $(this).remove();
    });
    $main.on('click', '.checks', function() {
        var merchantId = me.rt.getParams()['merchant_id'];
        me.rt.open(me.properties.target, {
            merchant_id: merchantId
        }, 0);
    });
}