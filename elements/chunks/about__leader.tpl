<article class="about__leader  uk-margin-large-bottom">
  <div class="uk-child-width-1-1 uk-child-width-1-2@s" data-uk-grid data-uk-height-match="target: > div > div">
    <div>
      <div class="uk-child-width-1-1 uk-child-width-1-2@m uk-grid-collapse" data-uk-grid data-uk-height-match="target: > div > div">
        <div>
          <div class="embed-responsive embed-responsive--1-1">
            <picture>
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=270&h=270&zc=C&f=webp&q=75`]]" media="(min-width: 992px)" type="image/webp">
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=270&h=270&zc=C&f=jpeg&q=75`]]" media="(min-width: 992px)">
              <!-- 270x270 -->
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=450&h=450&zc=C&f=webp&q=75`]]" media="(min-width: 640px)" type="image/webp">
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=450&h=450&zc=C&f=jpeg&q=75`]]" media="(min-width: 640px)">
              <!-- 450x450 -->
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=610&h=610&zc=C&f=webp&q=80`]]" media="(min-width: 480px)" type="image/webp">
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=610&h=610&zc=C&f=jpeg&q=80`]]" media="(min-width: 480px)">
              <!-- 610x610 -->
              <source data-srcset="[[+tv.head_photo:phpthumbon=`w=450&h=450&zc=C&f=webp&q=75`]]" type="image/webp">
              <img class="b-lazy" data-src="[[+tv.head_photo:phpthumbon=`w=450&h=450&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="450" height="450">
            </picture>
          </div>
        </div>
        <div class="padding-remove-l">
          <div class="uk-tile uk-tile-muted  about__leader-name">
            <h3 class="uk-text-primary">[[+longtitle:default=`[[+pagetitle]]`]]</h3>
            <span class="uk-h4">[[+introtext]]</span>
          </div>
        </div>
      </div>
    </div>
    <div class="about__leader-text">
      <div class="uk-panel uk-flex uk-flex-column uk-flex-between">
        <div>
          <p>[[+description]]</p>
          [[+tv.head_tel:notempty=`
          <a href="tel:+[[+tv.head_tel]]" class="uk-inline-block uk-margin-small-bottom" title="BPCA phone">[[+tv.head_tel:phone_format]]</a><br>
          `]]
          [[+tv.head_email:notempty=`
          <a href="mailto:[[+tv.head_email]]" class="uk-inline-block" title="BPCA email">[[+tv.head_email]]</a>
          `]]
        </div>
        <p class="uk-text-right">
          <a href="#" class="uk-button uk-button-default">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
        </p>
      </div>
    </div>
  </div>
</article>
