<section class="wedding-address">
    <div class="wd-hd-info-down">
        <p class="wd-hd-info-address-item wd-hd-info-address-item-address">
            <span class="wd-hd-info-address-address">
                {{ if: ${properties.isShowDistance} !== false && ${poi.poiInfo.distance} }}
                <span class="wd-hd-info-address-distance">
                    距您约<i>${poi.poiInfo.distance}</i> |
                </span>
                {{ /if }}
                ${poi.poiInfo.address}
            </span>
            {{ if: ${poi.mapInfo.BID} && ${poi.mapInfo.BID.length} > 0 }}
            <span class="wd-hd-info-address-map">
                看全景
            </span>
            {{ /if }}

        </p>
    </div>
</section>