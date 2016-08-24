<section class="lPoiAP">
    <img src="${poi.poiInfo.photo_list.first[0].strPUrl}" data-link="bainuo://component?compid=merchants&comppage=photos"/>
    <div class="lPoiAP-box">
        <div class="shade">
            <h3 class="NS-titlePoi">${poi.poiInfo.poi_name}</h3>
                <p class="NS-countPoi">${poi.poiInfo.poi_dist}</p>
            <p class="lPoiAP-score">
                 <span class="lPoiAP-score-empty"></span>
                  <span class="lPoiAP-score-count"></span>
            </p>
            {{ if: ${poi.poiInfo.per_price} }}
                <span class="lPoiAP-score-per">${poi.poiInfo.per_price}/人</span>
            {{ /if }}
        </div>
    </div>
</section>