<section>

  <div class="uk-margin-medium-bottom" style="background-color: rgba(35,42,48,0.25)">
    <div class="uk-container">
      <div class="uk-margin-top uk-margin-bottom uk-child-width-1-1 uk-child-width-1-2@s uk-flex-middle" data-uk-grid>
        <div>
          <div class>
            <h2 class="uk-h1 uk-margin-remove-bottom">[[$langs? &uk=`Найближчі події` &ru=`Ближайшие события` &en=`Upcoming events`]]</h2>
          </div>
        </div>
        <div class="uk-text-right@s">
          <a href="[[~[[BabelTranslation:default=`6`? &resourceId=`6` &contextKey=`[[*context_key]]`]]]]" class="text-link">[[$langs? &uk=`Всі публікації подій` &ru=`Все публикации событий` &en=`All event publications`]]</a>
        </div>
      </div>
    </div>
  </div>

  <div class="uk-container">
    <div data-uk-slider="finite: false">
      <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1">
        <ul class="uk-slider-items uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m uk-grid" data-uk-height-match="target: > li > .uk-card">

          [[pdoResources?
          &parents=`[[BabelTranslation:default=`6`? &resourceId=`6` &contextKey=`[[*context_key]]`]]`
          &tpl=`@FILE chunks/slider_event.tpl`
          &sortby=`{ "publishedon":"DESC" }`
          &limit=`6`
          &hideContainers=`1`
          &includeTVs=`image`
          ]]

        </ul>
        <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" data-uk-slidenav-previous data-uk-slider-item="previous" title="[[$langs? &uk=`Попередній слайд` &ru=`Предыдущий слайд` &en=`Previous slide`]]"></a>
        <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" data-uk-slidenav-next data-uk-slider-item="next" title="[[$langs? &uk=`Наступний слайд` &ru=`Следующий слайд` &en=`Next slide`]]"></a>
      </div>
      <ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
    </div>
  </div>
</section>
