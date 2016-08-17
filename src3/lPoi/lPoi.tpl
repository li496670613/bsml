<section class="lPoi3">
    <div class="wedding-head-box">
        <div class="head-info">
            <div class="head-info-box">
                <span>${poi.poiInfo.poi_name}</span>
                <p>${poi.poiInfo.poi_dist}</p>
                <b>A week everday tosubaside to theunknown lasty life</b>
            </div>
        </div>
        <div id="hd-slider" class="swipe">
            <div class="swipe-wrap">
              <div>
                 <img src="${poi.poiInfo.photo_list.first[0].strPUrl}" data-link="bainuo://component?compid=merchants&comppage=photos"/>
               </div>
             {{ for: ${poi.poiInfo.photo_list.front} as ${item} }}
                <div>
                    <img src="${item.strPUrl}" alt="" data-link="bainuo://component?compid=merchants&comppage=photos"/>
                </div>
                 {{ /for }}
            </div>
            <nav>
                <ul id="hd-slider-count">
                </ul>
            </nav>
        </div>
        <div class="wd-hd-info">
            <div class="wd-hd-info-up">
                {{ if: ${poi.poiInfo.pay_atshop} }}
        <span class="wd-hd-info-pay-btn" data-link="http://t10sc.nuomi.com/paynow/wap/order?merchant_id=${merchant_id}&city_id=${city_id}&from=merchant_detail&channel=nuomi&tiny_url=${poi.poiInfo.shoping_tiny_url}">
            优惠买单
        </span>
                {{ /if }}
                <span class="wd-hd-phone">TEL:<span>${poi.poiInfo.phone}</span></span>
                <p class="wd-hd-info-score">
             <span class="wd-hd-info-score-empty">
              </span>
               <span class="wd-hd-info-score-count">
                </span>
                 {{ if: ${poi.poiInfo.per_price} }}
                                   <span class="l-poi-hd-info-score-per">
                                   ¥<span>${poi.poiInfo.per_price}</span>/人
                                   </span>
                                    {{ /if }}
                </p>
            </div>
        </div>
    </div>
</section>