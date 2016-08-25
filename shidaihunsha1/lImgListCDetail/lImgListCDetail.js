function bindEvents(me) {
    var $main = $(me.main);
    $main.on('click', '.lImgListCDetail-item', function () {
        var $this = $(this);
        var index = $this.attr('data-index');
        var list = [];
        $('body').trigger('zhitcImgPreviweChange', {
            imgList: me.data.detail.imageList.content,
            current: (+index) + 1
        });
    });
}