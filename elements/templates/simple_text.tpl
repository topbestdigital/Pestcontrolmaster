{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}
  
  <main class="main-page" role="main">
    <div class="uk-container">
      <div class="uk-flex uk-flex-center">
        <article class="uk-width-1-1 uk-width-2-3@l uk-margin-large-bottom  text-page-content">
          
          <h1 class="uk-margin-medium-bottom">[[*template:ne=`4`:or:if=`[[*template]]`:is=`17`:then=`[[*longtitle:default=`[[*pagetitle]]`]]`:else=`[[*pagetitle]]`]]</h1>

          [[*introtext:notempty=`
            <p class="text-page-content__intro">[[*introtext]]</p>
          `]]
          <div class="text-page-content__content">

            [[*template:is=`4`:or:if=`[[*template]]`:is=`17`:then=`
            <div class="uk-margin-medium-bottom">
              <h4>Контактні дані:</h4>
              [[*member_phone:notempty=`
                <p class="uk-margin-small-bottom">
                  [[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]: <a href="tel:+[[*member_phone]]">[[*member_phone:phone_format]]</a>
                </p>
              `]]
              [[*member_email:notempty=`
              <p class="uk-margin-small-top uk-margin-small-bottom">
                Email: <a href="mailto:[[*member_email]]">[[*member_email]]</a>
              </p>
              `]]
              [[*member_site:notempty=`
              <p class="uk-margin-small-top uk-margin-remove-bottom">
                [[$langs? &uk=`Сайт` &ru=`Сайт` &en=`Website`]]: <a href="[[*member_site]]" target="_blank" rel="nofollow noopener">[[*member_site]]</a>
              </p>
              `]]
            </div>
            `:else=``]]

            [[*content:notempty=`[[*content]]`]]
          </div>
        </article>
      </div>

      [[getPageAssets?
      &innerTpl=`gallery_item_tpl`
      &outerTpl=`<div class="uk-child-width-1-3@m uk-margin-large-top" uk-grid uk-lightbox="animation: fade">[[+content]]</div>`
      ]]
     
    </div>
  </main>
{/block}
