<section class="lSalesD">
<div class="lSalesD-content">
    <div class="lSalesD-contents">
     {{ for: ${sales.tuanList} as ${item}, ${index} }}
    <div class="lSalesD-box {{ if: ${index} >= ${properties.limit} }} con-hide {{ /if }}"   data-link="bainuo://tuandetail?tuanid=${item.id}">
        <div class="oImage">
            <img src="${item.image}"/>
        </div>
        <div class="lSalesD-item-info">
           <p class="NS-titleSales">${item.min_title}</p>
           <span class="NS-priceSales">售价：&yen;${item.current_price} <s class="NS-priceoldSales">${item.market_price}</s></span>
           <b class="NS-countSales">已售：${item.sale_count}</b>
         </div>
    </div>
    {{ /for }}
     </div>
     <div class="more-item">查看更多</div>
     <em class="footes"></em>
    </div>
</section>