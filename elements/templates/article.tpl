{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-page" role="main">

    {include "file:chunks/breadcrumbs.tpl"}

    <div class="uk-container uk-margin-large-bottom">

      <div class="uk-flex uk-flex-center">
        <article class="uk-width-1-1 uk-width-2-3@m uk-width-3-5@l text-page-content">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>

          <div class="uk-flex uk-flex-start">
            <span class="uk-margin-small-bottom uk-margin-medium-right publishedon">[[*parent:getThisField=`pagetitle`]]</span>
            <span class="uk-margin-small-bottom publishedon">[[*publishedon:date=`%d.%m.%Y`]]</span>
          </div>

          [[*introtext:notempty=`
            <p class="uk-text-lead  text-page-content__intro">[[*introtext]]</p>
          `]]
          <div class="text-page-content__content">
           [[*content]]
          </div>
        </article>
      </div>

      [[getPageAssets?
      &innerTpl=`gallery_item_tpl`
      &outerTpl=`<div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m uk-margin-large-top" uk-grid uk-lightbox="animation: fade">[[+content]]</div>`
      ]]

    </div>

  </main>
{/block}
