{{target: zhitc-serve-detail}}
<section class="zhitc-serve-detail">
    <p class="zhitc-serve-detail-title">
        ${properties.title}
    </p>
    <ul class="zhitc-serve-detail-content-wrap zhitc-serve-detail-content-introduction">
        {{ for: ${detailInfo} as ${item}, ${index} }}

            <li class="zhitc-serve-detail-item {{ if: ${limit} && ${limit} <= ${index} }}zhitc-serve-detail-item-hide{{ /if }}">
                <p>
                    <a class="zhitc-serve-detail-item-count zhitc-serve-detail-item-introduction}" href="javascript:;">${item}</a>
                </p>
            </li>
        {{ /for }}
    </ul>
    <p class="zhitc-serve-detail-link">
        查看图文详情
    </p>
    {{ if: ${detailInfo.length} > ${properties.limit} }}
    <p class="zhitc-serve-detail-more">
        展开更多
    </p>
    {{ /if }}
    <div class="zhitc-poi-address-gap"></div>
</section>