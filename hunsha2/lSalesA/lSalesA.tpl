<section class="lSalesA">
    <div class="lSalesA-swipe">
        <div class="lSalesA-swipe-wrap">
         {{ for: ${sales.tuanList} as ${item}, ${index} }}
         <div class="lSalesA-item">
            <div class="lSalesA-item-con"  data-link="bainuo://tuandetail?tuanid=${item.id}">
                <img src="${item.image}"/>
                 <div class="lSalesA-item-info">
                <p>${item.min_title}</p>
                <span>售价：&yen;${item.current_price} <s>&yen;${item.market_price}</s></span>
                 <b>已售：${item.sale_count}</b>
                </div>
            </div>
         </div>
            {{ /for }}
        </div>
         <ul id="lSalesA-nav">
         </ul>
    </div>
</section>