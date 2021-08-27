{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-page main-page--short" role="main">
    <div class="uk-container">
      <div class="uk-light" data-uk-grid data-uk-height-match="target: > div > div">
        <div class="uk-width-1-1 uk-width-1-5@s uk-width-1-4@m uk-width-1-3@l">
          <div class="uk-visible@m uk-flex uk-flex-column uk-flex-center">
            <img src="assets/img/honeycombs-bg.svg" alt="decor">
          </div>
        </div>
        <div class="uk-width-1-1 uk-width-3-5@s uk-width-1-2@m uk-width-1-3@l">
          <div class="uk-text-center uk-flex uk-flex-column uk-flex-center">
            <img class="uk-display-block" src="assets/img/error-404.svg" alt="Error 404. [[$langs? &uk=`Сторінка не знайдена` &ru=`Страница не найдена` &en=`Page not found`]]">
            <h1 class="uk-margin-large-bottom">[[*longtitle:default=`[[$langs? &uk=`Сторінка не знайдена` &ru=`Страница не найдена` &en=`Page not found`]]`]]</h1>
            <p>
              <a href="/" class="uk-button uk-button-default uk-width-expand">[[$langs? &uk=`На головну` &ru=`На главную` &en=`to Home`]]</a>
            </p>
          </div>
        </div>
        <div class="uk-width-1-1 uk-width-1-5@s uk-width-1-4@m uk-width-1-3@l">
          <div class="uk-visible@m uk-flex uk-flex-column uk-flex-center" style="transform: scale(-1, 1);">
            <img src="assets/img/honeycombs-bg.svg" alt="decor">
          </div>
        </div>
      </div>
    </div>
  </main>
{/block}
