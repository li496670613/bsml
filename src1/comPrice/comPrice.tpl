<section class="zhitc-business-info">
    {{ if: ${detailInfo.startPrice} && ${detailInfo.endPrice} }}
       <p class="zhitc-com-price">
           <a class="zhitc-com-price-current" href="javascript:;">
               ¥${detailInfo.startPrice}-${detailInfo.endPrice}
           </a>
       </p>
    {{ /if }}
</section>