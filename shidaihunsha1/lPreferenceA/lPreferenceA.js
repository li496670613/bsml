function bindEvents(me) {
    var $main = $(me.main);
    if($main.find("p").length==0){
        $main.hide();
    }
}