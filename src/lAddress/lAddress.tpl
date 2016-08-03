<section class="lAddress">
    <div class="l-poi-title">
        <p>CONTACT US</p>
        <span>联系我们</span>
    </div>
    <div class="l-poi-address-info">
        <span>咨询热线：${poi.poiInfo.phone}</span>
        <div class="address-info-add">
            <span>${poi.poiInfo.address}</span>{{ if: ${poi.mapInfo.BID} && ${poi.mapInfo.BID.length} > 0 }}<div class="look-all">查看全景</button>
            {{ /if }}
        </div>
    </div>
</section>