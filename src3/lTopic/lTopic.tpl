<section class="wedding-info">
    <div class="wedding-info-box">
        <div class="wedding-title ti4">
        </div>
        <div class="danteng">
            <div class="dt-lf"></div>
            <div class="dt-rf">
                <p>鲜花预定，会议用花，商业用花，家庭用花，汇演用花，各大小型企业开业庆典用花，花车装饰</p>
            </div>
        </div>
        <div class="slider-box">
            <div id="slider" class="swipe">
                <div class="swipe-wrap">
                 {{ for: ${services} as ${item}, ${index} }}
                    <div><img src="${item.headImage}" alt="" data-link="detail?deal_id=${item.deal_id}"/></div>
                     {{ /for }}
                </div>
                <nav>
                    <ul id="position2">
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>