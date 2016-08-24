<section class="lImgListCDetails">
    <div class="lImgListCDetails-box">
         {{ for: ${detail.imageList.content} as ${item}, ${index} }}
            <div class="lImgListCDetails-item" >
                <img src="${item}"/>
            </div>
            {{ /for }}
    </div>
</section>