<section class="lServiceDDetails">
<div class="lServiceDDetails-content">
    <div class="lServiceDDetails-contents">
     {{ for: ${services} as ${item}, ${index} }}
    <div class="lServiceDDetails-box {{ if: ${index} >= 2}} con-hide {{ /if }}"   data-link="detail2?deal_id=${item.deal_id}" >
        <div class="oImage">
            <img src="${item.headImage}"/>
        </div>
        <div class="lServiceDDetails-item-info">
           <p class="NS-titleService">${item.name}</p>
           <span class="NS-priceService">售价：&yen;${item.startPrice}-${item.endPrice}</span>
           <b class="NS-countService">已售：${item.bookingCount}</b>
         </div>
    </div>
    {{ /for }}
     </div>
     <div class="more-item" data-link="dList">查看更多</div>
    </div>
</section>