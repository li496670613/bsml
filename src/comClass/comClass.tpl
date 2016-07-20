<section class="zhitc-class-detail">
    <div>
        <p class="zhitc-class-detail-title">
            ${detailInfo.name}
        </p>

        <p class="zhitc-class-detail-tag">
        {{ if: ${detailInfo.tags} }}
            {{ for: ${detailInfo.tags} as ${tag} }}
                <span class="zhitc-class-detail-tag-item">
                    ${tag}
                </span>
            {{ /for }}
        {{ /if }}
        </p>
        <ul class="zhitc-class-detail-content-wrap">
        {{ for: ${detailInfo.photoList} as ${item}, ${index} }}
            <li class="zhitc-class-detail-content">
                <img src="${item}" alt="image"/>
            </li>
        {{ /for }}
        </ul>
    </div>
    <div class="zhitc-class-detail-gap"></div>
</section>