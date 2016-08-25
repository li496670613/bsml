<section class="lPoiADetail">
<img src="${detail.headImage.content}" />
    <div class="lPoiADetail-box">
        <div class="shade">
            <h3 class="NS-titlePoi">${detail.name.content}</h3>
            <p class="NS-countPoi">
            {{ for: ${detail.tags.content} as ${item} }}
            <span>${item}</span>
            {{ /for }}
            </p>
        </div>
    </div>
</section>