<section class="l-poi-boutique">
    <div class="l-poi-title">
        <p>THE THEME PACKAGE</p>
        <span>精品团购</span>
    </div>
    <ul class="boutique-list">
   {{ for: ${sales.tuanList} as ${item}, ${index} }}
         <li class="{{ if: ${index} >= ${properties.limit} }}content-hide{{ /if }}">
                     
                     <img src="${item.image}" data-link="bainuo://tuandetail?tuanid=${item.id}" />
                     <div class="boutique-item-info">
                         <h3 data-link="bainuo://tuandetail?tuanid=${item.id}">${item.min_title}</h3>
                         <div class="package-money"><span>RMB:</span><div><b>${item.current_price}</b><s>${item.market_price}</s></div></div>
                         <p>${item.title_high_price}</p>
                     </div>
                 </li>
       {{ /for }}
    </ul>
    {{ if: ${index} >= ${properties.limit} }}<div class="serve-more"></div>{{ /if }}

</section>