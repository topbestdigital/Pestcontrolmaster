{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}
  
  <main class="main-page  uk-background-muted" role="main">
    <div class="uk-container">
      <div class="uk-margin-bottom">
        <h1>[[pdoField? &id=`[[BabelTranslation:default=`5`? &resourceId=`5` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]</h1>
      </div>
      <div class="uk-margin-medium-bottom" data-uk-grid data-uk-height-match="target: .uk-card">
        <div class="uk-width-1-1 uk-width-2-3@m">

          [[pdoResources?
          &parents=`[[BabelTranslation:default=`5`? &resourceId=`5` &contextKey=`[[*context_key]]`]]`
          &tpl=`@FILE chunks/last_news.tpl`
          &sortby=`{ "publishedon":"DESC" }`
          &limit=`1`
          &hideContainers=`1`
          &includeTVs=`image`
          ]]

        </div>
        <div class="uk-width-1-1 uk-width-1-3@m">
          <div class="uk-card uk-card-default uk-card-body  news-nav">
            <h2>[[$langs? &uk=`Розділи` &ru=`Разделы` &en=`Sections`]]:</h2>

            [[pdoMenu?
            &parents=`[[BabelTranslation:default=`5`? &resourceId=`5` &contextKey=`[[*context_key]]`]]`
            &showHidden=`1`
            &tplOuter=`@INLINE <ul class="uk-list">[[+wrapper]]</ul>`
            &tpl=`@INLINE <li><a href="[[+link]]" class="uk-h4" [[+attributes]]>[[+menutitle]]</a></li>`
            &tplHere=`@INLINE <li><a class="uk-h4  active" [[+attributes]]>[[+menutitle]]</a></li>`
            ]]
 
          </div>
        </div>
      </div>
      <div class="uk-margin-medium-bottom">

        <h2>Новини з розділу: <span>[[*longtitle:default=`[[*pagetitle]]`]]</span></h2>

        <div class="uk-child-width-1-1 uk-child-width-1-2@s  uk-child-width-1-3@m" data-uk-grid data-uk-height-match="target: > div > .uk-card">
          [[!pdoPage@sitePagination?
          &parents=`[[*id]]`
          &tpl=`@FILE chunks/news_card.tpl`
          &sortby=`{ "publishedon":"DESC" }`
          &limit=`6`
          &includeTVs=`image`
          ]]
        </div>
      </div>
      <div role="navigation">
        [[!+page.nav]]
      </div>
    </div>
  </main>
{/block}
