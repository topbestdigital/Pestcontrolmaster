<li>
  <a href="[[+uri]]" class="uk-card uk-card-small uk-card-default uk-flex uk-flex-column">
    <div class="embed-responsive embed-responsive--3-2 uk-card-media-top">
      <picture>
        <source data-srcset="[[+tv.image:phpthumbon=`w=375&h=250&zc=C&f=webp&q=75`]]" media="(min-width: 992px)" type="image/webp">
        <source data-srcset="[[+tv.image:phpthumbon=`w=375&h=250&zc=C&f=jpeg&q=75`]]" media="(min-width: 992px)">
        <!-- 375x250 -->
        <source data-srcset="[[+tv.image:phpthumbon=`w=450&h=300&zc=C&f=webp&q=75`]]" media="(min-width: 640px)" type="image/webp">
        <source data-srcset="[[+tv.image:phpthumbon=`w=450&h=300&zc=C&f=jpeg&q=75`]]" media="(min-width: 640px)">
        <!-- 450x300 -->
        <source data-srcset="[[+tv.image:phpthumbon=`w=600&h=400&zc=C&f=webp&q=75`]]" type="image/webp">
        <img class="b-lazy" data-src="[[+tv.image:phpthumbon=`w=600&h=400&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="600" height="400">
      </picture>
    </div>
    <div class="uk-card-body uk-flex uk-flex-column uk-flex-between">
      <h4 class="uk-card-title">[[+longtitle:default=`[[+pagetitle]]`]]</h4>
      <div class="uk-card-footer uk-padding-remove">
        <span class="publishedon">[[+publishedon:date=`%d.%m.%Y`]]</span>
      </div>
    </div>
  </a>
</li>
