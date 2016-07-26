<section class="lPoi">
    <div class="l-poi-header-box">
        <img src="${poi.poiInfo.photo_list.first[0].strPUrl}" class="l-poi-header-box-img" />
        <div class="l-poi-hd-control">
            <div class="l-poi-hd-title">${poi.poiInfo.poi_name}</div>
           <p class="l-poi-hd-info-score">
             <span class="l-poi-hd-info-score-empty">
              </span>
               <span class="l-poi-hd-info-score-count">
                </span>
                 {{ if: ${poi.poiInfo.per_price} }}
                   <span class="l-poi-hd-info-score-per">
                   ¥${poi.poiInfo.per_price}/人
                   </span>
                    {{ /if }}
                  </p>
        </div>
    </div>
        {{ if: ${poi.poiInfo.pay_atshop} || ${poi.poiInfo.business_hours} }}
        <p class="l-poi-header-time">
            {{ if: ${poi.poiInfo.business_hours} }}
        <span class="l-poi-header-info-time">
            营业时间:${poi.poiInfo.business_hours}
        </span>
            {{ /if }}
            {{ if: ${poi.poiInfo.pay_atshop} }}
        <span class="l-poi-header-info-pay-btn">
            优惠买单
        </span>
            {{ /if }}
        </p>
        {{ /if }}
</section>