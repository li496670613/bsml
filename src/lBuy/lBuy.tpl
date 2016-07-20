<section class="l-poi-boutique">
    <div class="l-poi-title">
        <p>THE THEME PACKAGE</p>
        <span>精品团购</span>
    </div>
    <ul class="boutique-list">
   {{ for: ${sales.tuanList} as ${item}, ${index} }}
         <li class="{{ if: ${index} >= ${properties.limit} }}content-hide{{ /if }}">
                     <img src="${item.image}" data-link="https://m.nuomi.com/webapp/tuan/detail?deal_id=${item.deal_id}" />
                     <div class="boutique-item-info">
                         <h3>${item.business_title}</h3>
                         <span>${item.tags}</span>
                         <div class="package-money"><span>RMB:</span><div><b>${item.current_price}</b><s>${item.market_price}</s></div></div>
                         <p>${item.title_high_price}<a href="javascript:;" data-link="https://m.nuomi.com/webapp/tuan/detail?deal_id=${item.deal_id}" >查看详情</a></p>
                     </div>
                 </li>
       {{ /for }}
    </ul>
    {{ if: ${index} >= ${properties.limit} }}<div class="serve-more"></div>{{ /if }}

</section>