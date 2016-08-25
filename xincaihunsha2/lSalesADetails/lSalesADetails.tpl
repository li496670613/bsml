<section class="lSalesADetails">
    <div class="lSalesADetails-swipe">
        <div class="lSalesADetails-swipe-wrap">
         {{ for: ${sales.tuanList} as ${item}, ${index} }}
         <div class="lSalesADetails-item">
            <div class="lSalesADetails-item-con"   data-link="bainuo://tuandetail?tuanid=${item.id}">
                <img src="${item.image}"/>
                 <div class="lSalesADetails-item-info">
                <p>${item.min_title}</p>
                <span>售价：&yen;${item.current_price} <s>&yen;${item.market_price}</s></span>
                 <b>已售：${item.sale_count}</b>
                </div>
            </div>
         </div>
            {{ /for }}
        </div>
         <ul id="lSalesADetails-nav">
         </ul>
    </div>
</section>