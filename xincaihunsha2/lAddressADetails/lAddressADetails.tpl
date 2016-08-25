<section class="lAddressADetails" >
    <div class="lAddressADetails-box">
            <span class="lAddressADetails-box-address">
                {{ if: ${properties.isShowDistance} !== false && ${poi.poiInfo.distance} }}
                <span class="lAddressADetails-box-distance">
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