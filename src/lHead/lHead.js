function init(me, data) {
    me.data.city_id = BNJS.location.cityCode || 100010000;
}

function bindEvents(me) {
    var score = me.data.poi.scoreInfo;
    var scoreStyle = score.average_score ? score.average_score * 0.328 + 'rem' : score.average_score + 'px';
    var average_score = Math.round(score.average_score * 10) / 10;
    $(".l-poi-hd-info-score-empty").css({
        "width": scoreStyle
    });
    $(".l-poi-hd-info-score-count").html(average_score);
}