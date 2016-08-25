<section class="lSalesADetail">
    <div class="lSalesADetail-swipe">
        <div class="lSalesADetail-swipe-wrap">
         {{ for: ${sales.tuanList} as ${item}, ${index} }}
         <div class="lSalesADetail-item">
            <div class="lSalesADetail-item-con"  data-link="bainuo://tuandetail?tuanid=${item.id}">
                <img src="${item.image}"/>
                 <div class="lSalesADetail-item-info">
                <p>${item.min_title}</p>
                <span>售价：&yen;${item.current_price} <s>&yen;${item.market_price}</s></span>
                 <b>已售：${item.sale_count}</b>
                </div>
            </div>
         </div>
            {{ /for }}
        </div>
         <ul id="lSalesADetail-nav">
         </ul>
    </div>
</section>