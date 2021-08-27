{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main">

    <section class="uk-background-primary uk-margin-large-bottom uk-light">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@s" data-uk-grid>
          <div class="uk-margin-medium-top uk-margin-medium-bottom">
            <h2>[[pdoField? &id=`[[BabelTranslation:default=`49`? &resourceId=`49` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]</h2>
            <p>[[pdoField? &id=`[[BabelTranslation:default=`49`? &resourceId=`49` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]</p>
            <a href="[[~[[BabelTranslation:default=`2`? &resourceId=`2` &contextKey=`[[*context_key]]`]]]]" class="uk-button uk-button-default uk-margin-large-top">[[$langs? &uk=`Читати більше` &ru=`Читать больше` &en=`Read more`]]</a>
          </div>
          <div class="uk-text-center uk-text-right@m uk-margin-remove-top uk-flex uk-flex-center uk-flex-right@m">
            <img class="aim-img" data-src="assets/img/pest-control-bg.svg" alt="pest-control decoration" data-uk-img>
          </div>
        </div>
      </div>
    </section>
    
    <section class="uk-section uk-background-muted uk-margin-large-bottom">
      <div class="uk-container">
        <h2>[[pdoField? &id=`[[BabelTranslation:default=`50`? &resourceId=`50` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]</h2>

        <ul class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m uk-margin-medium-top" data-uk-grid data-uk-height-match="target: > li > .uk-card">
          [[!getImageList?
          &tvname=`membership_benefits`
          &tpl=`@CODE:
          <li>
            <div class="uk-card uk-card-small uk-card-default">
              <div class="uk-card-body" style="border-bottom: 4px solid #27b45d">
                <img src="assets/img/rat.svg" alt="Rat icon" width="90" height="64">
              </div>
              <div class="uk-card-body">
                <h3 class="uk-card-title">[[+idx]]. [[+title]]</h3>
                <p>[[+content]]</p>
              </div>
            </div>
          </li>
          `
          &docid=`[[BabelTranslation:default=`50`? &resourceId=`50` &contextKey=`[[*context_key]]`]]`
          &limit=`3`
          ]]
        </ul>
      </div>
    </section>

    <section class="uk-section uk-background-primary uk-margin-large-bottom uk-light">
      <div class="uk-container">
        <h2>[[$langs? &uk=`Стрічка останніх новин з розділу` &ru=`Лента последних новостей из раздела` &en=`The latest news feed from the section`]]:</h2>

        <div>
          <div class="uk-container uk-margin-bottom uk-margin-medium-top" style="background-color: rgba(35,42,48,0.25)">
            <div class="uk-margin-top uk-margin-bottom uk-child-width-1-1 uk-child-width-1-2@s uk-flex-middle subtitle-on-background" data-uk-grid>
              <div>
                <h3 class="uk-margin-remove-bottom">[[pdoField? &id=`[[BabelTranslation:default=`43`? &resourceId=`43` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h3>
              </div>
              <div class="uk-text-right@s">
                <a href="[[~[[BabelTranslation:default=`43`? &resourceId=`43` &contextKey=`[[*context_key]]`]]]]" class="text-link">[[$langs? &uk=`Всі публікації` &ru=`Все публикации` &en=`All publications`]]</a>
              </div>
            </div>
          </div>

          <ul class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m" data-uk-grid data-uk-height-match="target: > li > .uk-card">
            [[pdoResources?
            &parents=`[[BabelTranslation:default=`43`? &resourceId=`43` &contextKey=`[[*context_key]]`]]`
            &tpl=`@FILE chunks/index_news_card.tpl`
            &sortby=`{ "publishedon":"DESC" }`
            &limit=`3`
            ]]
          </ul>
        </div>

        <div>
          <div class="uk-container uk-margin-bottom uk-margin-medium-top" style="background-color: rgba(35,42,48,0.25)">
            <div class="uk-margin-top uk-margin-bottom uk-child-width-1-1 uk-child-width-1-2@s uk-flex-middle subtitle-on-background" data-uk-grid>
              <div>
                <h3 class="uk-margin-remove-bottom">[[pdoField? &id=`[[BabelTranslation:default=`42`? &resourceId=`42` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h3>
              </div>
              <div class="uk-text-right@s">
                <a href="[[~[[BabelTranslation:default=`42`? &resourceId=`42` &contextKey=`[[*context_key]]`]]]]" class="text-link">[[$langs? &uk=`Всі публікації` &ru=`Все публикации` &en=`All publications`]]</a>
              </div>
            </div>
          </div>
          <ul class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m" data-uk-grid data-uk-height-match="target: > li > .uk-card">
            [[pdoResources?
            &parents=`[[BabelTranslation:default=`42`? &resourceId=`42` &contextKey=`[[*context_key]]`]]`
            &tpl=`@FILE chunks/index_news_card.tpl`
            &sortby=`{ "publishedon":"DESC" }`
            &limit=`3`
            ]]
          </ul>
        </div>

        [[pdoResources?
        &parents=`[[BabelTranslation:default=`44`? &resourceId=`44` &contextKey=`[[*context_key]]`]]`
        &toPlaceholder=`check`
        ]]

        [[+check:notempty=`
        <div>
          <div class="uk-container uk-margin-bottom uk-margin-medium-top" style="background-color: rgba(35,42,48,0.25)">
            <div class="uk-margin-top uk-margin-bottom uk-child-width-1-1 uk-child-width-1-2@s uk-flex-middle subtitle-on-background" data-uk-grid>
              <div>
                <h3 class="uk-margin-remove-bottom">[[pdoField? &id=`[[BabelTranslation:default=`44`? &resourceId=`44` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h3>
              </div>
              <div class="uk-text-right@s">
                <a href="[[~[[BabelTranslation:default=`44`? &resourceId=`44` &contextKey=`[[*context_key]]`]]]]" class="text-link">[[$langs? &uk=`Всі публікації` &ru=`Все публикации` &en=`All publications`]]</a>
              </div>
            </div>
          </div>
          <ul class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m" data-uk-grid data-uk-height-match="target: > li > .uk-card">
            [[pdoResources?
            &parents=`[[BabelTranslation:default=`44`? &resourceId=`44` &contextKey=`[[*context_key]]`]]`
            &tpl=`@FILE chunks/index_news_card.tpl`
            &sortby=`{ "publishedon":"DESC" }`
            &limit=`3`
            ]]
          </ul>
        </div>
        `]]

      </div>

    </section>

    <section class="partners uk-margin-large-bottom uk-dark">
      <div class="uk-container">
        <h2>[[pdoField? &id=`[[BabelTranslation:default=`54`? &resourceId=`54` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="uk-position-relative uk-visible-toggle" tabindex="-1" data-uk-slider>
          <hr class="uk-margin-top">
          <ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-child-width-1-5@l uk-grid">
            [[!getImageList?
            &tvname=`partners`
            &tpl=`partners_tpl`
            &docid=`[[BabelTranslation:default=`54`? &resourceId=`54` &contextKey=`[[*context_key]]`]]`
            &limit=`20`
            ]]
          </ul>
          <hr>
          <a class="uk-position-center-left uk-hidden-hover" href="#" data-uk-slidenav-previous data-uk-slider-item="previous" style="transform:translateY(calc(-50% - 12px))"></a>
          <a class="uk-position-center-right uk-hidden-hover" href="#" data-uk-slidenav-next data-uk-slider-item="next" style="transform:translateY(calc(-50% - 12px))"></a>
          <ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
        </div>
      </div>
    </section>

    <section class="advertising-block uk-margin-large-bottom">
      <div class="uk-container">
        <h2 class="visually-hidden">[[$langs? &uk=`Рекламний блок` &ru=`Рекламный блок` &en=`Ad unit`]]</h2>
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m" data-uk-grid>

          [[!getImageList?
          &tvname=`advertising`
          &tpl=`advertising_tpl`
          &docid=`[[BabelTranslation:default=`56`? &resourceId=`56` &contextKey=`[[*context_key]]`]]`
          &limit=`3`
          ]]

        </div>
      </div>
    </section>
    
  </main>
{/block}
