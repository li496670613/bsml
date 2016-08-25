{{ if: ${poi.poiInfo.pay_atshop} || ${poi.poiInfo.business_hours} }}
<section class="lShophoursA">
    <div class="lShophoursA-box">
        {{ if: ${poi.poiInfo.business_hours} }}
        <span class="lShophoursA-time">
            营业时间:${poi.poiInfo.business_hours}
        </span>
        {{ /if }}
        {{ if: ${poi.poiInfo.pay_atshop} }}
        <span class="lShophoursA-pay-btn">
            优惠买单
        </span>
        {{ /if }}
    </div>
</section>
{{ /if }}