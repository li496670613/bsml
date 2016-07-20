<section class="public-topic">
    <div class="sections-box">
    {{ for: ${services} as ${item}, ${index} }}
        <div class="topic-item {{ if: ${index}>= ${properties.limit} }} content-hide{{ /if }}" data-link="detail?deal_id=${item.deal_id}">
            <img src="${item.headImage}" alt="" />
            <div class="item-info">
                <h3>${item.name}</h3>
                <span>${item.tags[0]}</span>
            </div>
        </div>
        {{ /for }}
    </div>
    {{ if: ${index} >= ${properties.limit} }}<div class="check-more">查看更多</div>{{ /if }}
</section>