<section class="public-project">
    <div class="sections-box">
     {{ for: ${sales.tuanList} as ${item}, ${index} }}
        <div class="project-item {{ if: ${index} %2 == 0 }}project-l{{ /if }} {{ if: ${index} %2 != 0 }}project-r{{ /if }} {{ if: ${index}>= ${properties.limit} }} content-hide{{ /if }}">
            <div class="project-item-i">
                          <div class="project-item-img">
            <img src="${item.image}" alt="" data-link="${properties.target}?deal_id=${item.deal_id}"/>
               </div>
                        </div>
            <div class="project-item-info">
            <div class="project-item-info-title">
                <em></em>
                <h3 data-link="${properties.target}?deal_id=${item.deal_id}">${item.business_title}</h3>
                </div>
                <span>&yen;${item.current_price}</span>
                <s>&yen;${item.market_price}</s>
            </div>
        </div>
        {{ /for }}
    </div>
      {{ if: ${index} >= ${properties.limit} }}<div class="check-more">查看更多</div>{{ /if }}
</section>