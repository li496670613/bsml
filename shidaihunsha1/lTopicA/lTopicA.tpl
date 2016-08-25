<section class="lTopicA">
    <div class="lTopicA-swipe">
        <div class="lTopicA-swipe-wrap">
         {{ for: ${services} as ${item}, ${index} }}
            <div class="lTopicA-item"  data-link="detail?deal_id=${item.deal_id}" >
                <img src="${item.headImage}"/>
                <span class="shade">${item.tags[0]}</span>
            </div>
            {{ /for }}
        </div>
         <ul id="lTopicA-nav">
         </ul>
    </div>
</section>