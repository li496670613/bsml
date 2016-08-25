<section class="lImgListCDetail">
    <div class="lImgListCDetail-box">
         {{ for: ${detail.imageList.content} as ${item}, ${index} }}
            <div class="lImgListCDetail-item" >
                <img src="${item}"/>
            </div>
            {{ /for }}
    </div>
</section>