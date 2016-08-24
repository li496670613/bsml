function init(me, data) {
    me.data.city_id = BNJS.location.cityCode || 100010000;
    me.data.poi.poiInfo.per_price = Math.ceil(me.data.poi.poiInfo.per_price/100);
}


function bindEvents(me) {
    var score = me.data.poi.scoreInfo;
    var scoreStyle = score.average_score ? score.average_score/ 5 * 25.625 + 'vw' : score.average_score + 'px';
    var average_score = Math.round(score.average_score * 10) / 10;
    $(".lPoiAP-score-empty").css({
        "width": scoreStyle
    });
    $(".lPoiAP-score-count").html(average_score);
    if (!me.data.poi.poiInfo) {
        return;
    }
}