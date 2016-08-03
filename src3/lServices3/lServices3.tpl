<section class="wedding-services">
    <div class="wedding-services-box">
        <div class="wedding-title ti3">
        </div>
        <ul class="wedding-services-item">
           {{ for: ${services} as ${item}, ${index} }}
            <li class="{{ if: ${index}>= ${properties.limit} }} content-hide{{ /if }}">
                <img src="${item.headImage}" alt="" />
                <div class="we-services {{ if: ${index} %2 == 0 }}stay-l{{ /if }} {{ if: ${index} %2 != 0 }}stay-r{{ /if }} " >
                    <span data-link="${properties.target}?deal_id=${item.deal_id}">${item.name}</span>
                    <em>单品鲜花:¥${item.startPrice}-${item.endPrice}</em>
                    <i data-link="${properties.target2}?deal_id=${item.deal_id}">到店预约</i>
                    <b>电话咨询</b>
                </div>
            </li>
             {{ /for }}
        </ul>
        {{ if: ${index}>= ${properties.limit} }}
        <div class="check-more">
            <span>MORE</span>
            <p>展开更多</p>
        </div>
        {{ /if }}
    </div>
</section>