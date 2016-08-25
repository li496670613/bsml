<section class="lAddressA" >
    <div class="lAddressA-box">
            <span class="lAddressA-box-address">
                {{ if: ${properties.isShowDistance} !== false && ${poi.poiInfo.distance} }}
                <span class="lAddressA-box-distance">
                    距您约<i>${poi.poiInfo.distance}</i> |
                </span>
                {{ /if }}
                ${poi.poiInfo.address}
            </span>
            {{ if: ${poi.mapInfo.BID} && ${poi.mapInfo.BID.length} > 0 }}
            <span class="look-all">
                看全景
            </span>
            {{ /if }}
    </div>
</section>