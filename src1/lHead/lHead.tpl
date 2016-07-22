<section class="public-head">
    <div class="sections-box">
        <div class="head-box-up">
            <img src="${poi.poiInfo.image}" class="head-box-up-img" alt=""/>
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
               {{ if: ${poi.poiInfo.per_price} }}
                   <span class="head-score-per">
                   ${poi.poiInfo.per_price}元/人
                   </span>
                {{ /if }}
            </p>

        </div>
          {{ if: ${poi.poiInfo.pay_atshop} }}
        <div class="head-box-down">
            <div class="head-buy">优惠买单</div>
        </div>
          {{ /if }}
    </div>
</section>