<section class="lTopicADetail">
    <div class="lTopicADetail-swipe">
        <div class="lTopicADetail-swipe-wrap">
         {{ for: ${services} as ${item}, ${index} }}
            <div class="lTopicADetail-item"  data-link="detail?deal_id=${item.deal_id}" >
                <img src="${item.headImage}"/>
                <span class="shade">${item.tags[0]}</span>
            </div>
            {{ /for }}
        </div>
         <ul id="lTopicADetail-nav">
         </ul>
    </div>
</section>