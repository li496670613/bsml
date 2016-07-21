<section class="l-poi-active">
    <div class="l-poi-title">
        <p>NEWS ACTIVITIES</p>
        <span>优惠活动</span>
    </div>
    <div class="l-poi-activity">
    {{ for: ${activity} as ${item}, ${index} }}
        <div class="ac-left" data-link="bookPage">
            {{ if: ${index} == 0 }}
            <img src="${properties.one}"/>
            {{ else }}
            <img src="${properties.two}"/>
            {{ /if }}
            <p>${item.content}</p>
            <em>${item.title}</em>
        </div>
         {{ /for }}
    </div>
</section>