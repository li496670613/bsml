<section class="public-item">
    <div class="sections-box">
    {{ for: ${services} as ${item}, ${index} }}
        <div class="item-show {{ if: ${index} %2 == 0 }}show-l{{ /if }} {{ if: ${index} %2 != 0 }}show-r{{ /if }} {{ if: ${index}>= ${properties.limit} }} content-hide{{ /if }}" data-link="${properties.target}?deal_id=${item.deal_id}">
            <img src="${item.headImage}"/>
            <div class="item-show-info">
                <h3 data-link="${properties.target}?deal_id=${item.deal_id}">${item.name}</h3>
                <span>&yen;${item.startPrice}-${item.endPrice}</span>
                <em>已售:${item.bookingCount}</em>
            </div>
        </div>
         {{ /for }}
        {{ if: ${index} >= ${properties.limit} }}<div class="check-more">查看更多</div>{{ /if }}
    </div>
</section>