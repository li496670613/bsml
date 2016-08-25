<section class="lTopicAShop">
    <div class="lTopicAShop-box">
     {{ for: ${shop.serviceFeatures.content} as ${item} }}
        <span>${item}</span>
      {{/for}}
     </div>
</section>