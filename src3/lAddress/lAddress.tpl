<section class="wedding-address">
    <div class="wd-hd-info-down">
        <p class="wd-hd-info-address-item wd-hd-info-address-item-address">
            <span class="wd-hd-info-address-address">
                <!--{{ if: ${properties.isShowDistance} !== false && ${poiInfo.distance} }}-->
                <span class="wd-hd-info-address-distance">
                    距您约<i>${poiInfo.distance}</i>
                </span>
                <!--{{ /if }}-->
                <!--${poiInfo.address}-->
            </span>
            <!--{{ if: ${mapInfo.BID} }}-->
            <span class="wd-hd-info-address-map">
                看全景
            </span>
            {{ /if }}
        </p>
    </div>
</section>