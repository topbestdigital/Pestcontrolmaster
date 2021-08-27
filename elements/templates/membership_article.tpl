{extends 'file:templates/layout.tpl'}

{block 'main'}
  
  {include "file:chunks/breadcrumbs.tpl"}

  <main class="main-page" role="main">
    <div class="uk-container">
      <div class="uk-flex uk-flex-center">
        <article class="uk-width-1-1 uk-width-2-3@l uk-margin-large-bottom  text-page-content">
          <h1 class="uk-margin-medium-bottom">[[*longtitle:default=`[[*pagetitle]]`]]</h1>

          [[*introtext:notempty=`
            <p class="text-page-content__intro">[[*introtext]]</p>
          `]]
          <div class="text-page-content__content">
           [[*content]]
          </div>
        </article>
      </div>

      {include 'file:chunks/membership_form.tpl'}
     
    </div>
  </main>
{/block}
