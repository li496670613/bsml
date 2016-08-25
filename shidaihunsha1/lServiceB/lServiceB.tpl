<section class="lServiceB">
    <div class="lServiceB-swipe">
        <div class="lServiceB-swipe-wrap">
            {{ for: ${services} as ${item}, ${index} }}
            {{ if: ${index} % 2==0}}
            <div class="lServiceB-item">
                {{ /if }}
                <div class="lServiceB-item-box"  data-link="detail2?deal_id=${item.deal_id}" >
                <div class="lServiceB-item-con">
                    <img src="${item.headImage}"/>
                    <div class="lServiceB-item-info">
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
        <ul id="lServiceB-nav">
        </ul>
    </div>
</section>