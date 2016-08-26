<section class="lPreferenceA" data-link="bookPage" >
        {{ for: ${preference} as ${item}, ${index} }}
        <p class="{{ if: ${index} <= ${properties.limit} }}content-hide{{ /if }}"><span>${item.title}:</span> ${item.content}</p>
        {{ /for }}
</section>