<section class="lServiceBDetails">
    <div class="lServiceBDetails-swipe">
        <div class="lServiceBDetails-swipe-wrap">
            {{ for: ${services} as ${item}, ${index} }}
            {{ if: ${index} % 2==0}}
            <div class="lServiceBDetails-item">
                {{ /if }}
                <div class="lServiceBDetails-item-box"  data-link="detail2?deal_id=${item.deal_id}" >
                <div class="lServiceBDetails-item-con">
                    <img src="${item.headImage}"/>
                    <div class="lServiceBDetails-item-info">
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
        <ul id="lServiceBDetails-nav">
        </ul>
    </div>
</section>