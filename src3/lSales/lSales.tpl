<section class="wedding-activity">
    <div class="wedding-activity-box">
        <div class="wedding-title ti1">
        </div>
         {{ for: ${sales.tuanList} as ${item}, ${index} }}
        <div class="bus-info  {{ if: ${index}>= ${properties.limit} }} content-hide{{ /if }}">
            <div class="bus-info-box">
                <img src="${item.image}" alt="" data-link="bainuo://tuandetail?tuanid=${item.id}"/>
                <div class="bus-detail">
                    <h4 data-link="bainuo://tuandetail?tuanid=${item.id}">${item.business_title}</h4>
                    <div class="bus-detail-info">
                        <div class="bus-detail-info-l">
                            <div class="price-info-t">
                                <span>秒杀价</span> <em>&yen;<span class="current_price">${item.current_price}</span>.00</em>
                            </div>
                            <div class="price-info-b">
                                <span>原价</span><s class="market_price">${item.market_price}.00</s><em> / </em><i>省</i><b class="save_price"></b>
                            </div>
                        </div>
                        <div class="bus-detail-info-r">
                            <span>已售${item.sale_count}</span>
                            <button type="button"  data-link="bainuo://tuandetail?tuanid=${item.id}">点击购买</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         {{ /for }}
       {{ if: ${index}>= ${properties.limit} }}
        <div class="check-more">
            <span>MORE</span>
            <p>展开更多</p>
        </div>
        {{ /if }}
    </div>
</section>