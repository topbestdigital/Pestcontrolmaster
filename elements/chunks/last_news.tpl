<section class="top-event uk-overflow-hidden">
  <h2 class="visually-hidden">[[$langs? &uk=`Остання новина в розділі` &ru=`Последняя новость в разделе` &en=`The latest news in the section`]]</h2>
  <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s" data-uk-grid>
    <div class="uk-card-media-left uk-cover-container">
      <img src="[[+tv.image:phpthumbon=`w=600&h=400&zc=C&f=jpeg&q=75`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]" data-uk-cover>
      <canvas width="600" height="400"></canvas>
    </div>
    <div class="uk-flex uk-flex-column uk-flex-between">
      <div class="uk-card-body">
        <div class="uk-width-expand">
          <div class="uk-flex uk-flex-between">
            <span class="uk-margin-small-bottom publishedon">[[+parent:getThisField=`pagetitle`]]</span>
            <span class="uk-margin-small-bottom publishedon">[[+publishedon:date=`%d.%m.%Y`]]</span>
          </div>
          <h3 class="uk-card-title">[[+longtitle:default=`[[+pagetitle]]`]]</h3>
        </div>
        <a href="[[+uri]]" class="uk-button uk-button-default">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
      </div>
    </div>
  </div>
</section>
