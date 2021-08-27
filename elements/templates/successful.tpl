{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}

  <main class="main-page" role="main">
    <div class="uk-container">

      <div class="uk-section uk-section-primary uk-light">
        <div class="uk-padding uk-text-center">
          <span data-uk-icon="icon: happy; ratio: 3"></span>
          <h2>[[*longtitle:default=`[[*pagetitle]]`]]</h2>
          [[*introtext:notempty=`<p class="uk-text-lead">[[*introtext]]</p>`]]
        </div>

      </div>

    </div>
  </main>
{/block}
