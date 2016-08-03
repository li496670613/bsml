<section class="lTopic">
    <div class="l-poi-title">
        <p>HOT SCENES</p>
        <span>热门场景</span>
    </div>
   <div class="scenes-box">
       <div class="scenes-box-up">
       {{ for: ${services} as ${item}, ${index} }}
          {{ if: ${index} < 4}}
           <div class="img-box" data-link="detail?deal_id=${item.deal_id}" >
               <img src="${item.headImage}"/>
               <span>${item.tags[0]}</span>
           </div>
           {{ /if }}
           {{ if: ${index} == 0 }}
       </div>
       <div class="scenes-box-down">
           {{ /if }}
           {{ if: ${index} == 3}}
      </div>
   </div>
           {{ /if }}
      {{ /for }}
    </div>
</section>