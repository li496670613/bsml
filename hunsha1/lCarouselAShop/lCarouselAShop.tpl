<section class="lCarouselAShop">
    <div class="lCarouselAShop-swipe">
        <div class="lCarouselAShop-swipe-wrap">
         {{ for: ${shop.imageList.content} as ${item} }}
         <div class="lCarouselAShop-item">
                <img src="${item}"/>
         </div>
         {{ /for }}
        </div>
          <ul id="lCarouselAShop-nav">
           </ul>
    </div>
</section>