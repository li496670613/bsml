/**
 * Created by Administrator on 2016/7/18.
 */
function init(me, data) {
    if (!data.total) {
        me.tpl = null;
    }
}
function bindEvents(me) {
    var $main = $(me.main);
    $main .on('click', '.serve-more', function() {
        $('.boutique-list li').removeClass('content-hide');
        $(this).remove();
    });
}