<section class="lServiceBDetail">
    <div class="lServiceBDetail-swipe">
        <div class="lServiceBDetail-swipe-wrap">
            {{ for: ${services} as ${item}, ${index} }}
            {{ if: ${index} % 2==0}}
            <div class="lServiceBDetail-item">
                {{ /if }}
                <div class="lServiceBDetail-item-box"  data-link="detail2?deal_id=${item.deal_id}" >
                <div class="lServiceBDetail-item-con">
                    <img src="${item.headImage}"/>
                    <div class="lServiceBDetail-item-info">
                        <p>${item.name}</p>
                        <span>售价：&yen;${item.startPrice}-${item.endPrice}</span>
                        <b>已售：${item.bookingCount}</b>
                    </div>
                </div>
                 </div>
                {{ if: ${index} % 2!=0||${index}==${services.length}-1 }}
            </div>
            {{ /if }}
            {{ /for }}
        </div>
        <ul id="lServiceBDetail-nav">
        </ul>
    </div>
</section>