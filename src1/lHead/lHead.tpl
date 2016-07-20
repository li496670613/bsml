<section class="public-head">
    <div class="sections-box">
        <div class="head-box-up">
            <img src="${poi.poiInfo.first[0].strUrl}" alt=""/>
            <div class="head-title">
                <h3>${poi.poiInfo.poi_name}</h3>
                <span>${poi.poiInfo.poi_dist}</span>
            </div>
            <p class="head-score">
            <span class="head-s">店铺评价</span>
             <span class="head-score-empty">
              </span>
               <span class="head-score-count">
                </span>
                <!--{{ if: ${poi.poiInfo.per_price} }}-->
                   <span class="head-score-per">
                   ¥30/人
                   </span>
                <!--{{ /if }}-->
            </p>

        </div>
        <div class="head-box-down">
          {{ if: ${poi.poiInfo.pay_atshop} }}
            <div class="head-buy" data-link="http://t10sc.nuomi.com/paynow/wap/order?merchant_id=${merchant_id}&city_id=${city_id}&from=merchant_detail&channel=nuomi&tiny_url=${poi.poiInfo.shoping_tiny_url}">优惠买单</div>
          {{ /if }}
        </div>
    </div>
</section>