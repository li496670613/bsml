<section class="l-poi-package">
    <div class="l-poi-title">
        <p>BOUTIQUE BUY</p>
        <span>主题套餐</span>
    </div>
    <ul class="package-list">
     {{ for: ${services} as ${item}, ${index} }}
        <li class="{{ if: ${index} >= ${properties.limit} }}content-hide{{ /if }}">
            <img src="${item.headImage}" data-link="${properties.target}?deal_id=${item.deal_id}" />
            <div class="package-item-info">
                <span>${item.name}</span>
                <div class="package-time">
                    <span>已参与人数：</span>
                    <em>${item.bookingCount}人</em>
                </div>
                 <div class="ser-money"><span>RMB:</span>${item.startPrice}&#8764;${item.endPrice}</div>
                <div class="package-btn">
                    <a class="checks" href="#" data-link="${properties.target}?deal_id=${item.deal_id}" >查看详情</a>
                    <a class="apply" href="#" data-link="${properties.target2}?deal_id=${item.deal_id}" >点击报名</a>
                </div>
            </div>
        </li>
          {{ /for }}
    </ul>
     {{ if: ${index} >= ${properties.limit} }}<div class="serve-more"></div>{{ /if }}
</section>