{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}

  <main class="main-page  uk-background-muted" role="main">
    <div class="uk-container">
      <div class="uk-margin-bottom">
        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
      </div>

      <div class="uk-margin-medium-bottom" data-uk-grid data-uk-height-match="target: .uk-card">
        <div class="uk-width-1-1 uk-width-2-3@m">

          [[pdoResources?
          &parents=`[[*id]]`
          &tpl=`@FILE chunks/last_event.tpl`
          &sortby=`{ "publishedon":"DESC" }`
          &limit=`1`
          &hideContainers=`1`
          &includeTVs=`image`
          ]]

        </div>

        <div class="uk-width-1-1 uk-width-1-3@m">
          <div class="uk-card uk-card-default uk-card-body  top-event-calendar">
            <h2>2019</h2>
            <table class="uk-table uk-table-divider uk-text-bold">
              <tbody>
              <tr>
                <td><a class="active" title="Події по місяцях">01</a></td>
                <td><a href="#" title="Події по місяцях">02</a></td>
                <td><a href="#" title="Події по місяцях">03</a></td>
                <td><a href="#" title="Події по місяцях">04</a></td>
                <td><a href="#" title="Події по місяцях">05</a></td>
                <td><a href="#" title="Події по місяцях">06</a></td>
              </tr>
              <tr>
                <td><a href="#" title="Події по місяцях">07</a></td>
                <td><a href="#" title="Події по місяцях">08</a></td>
                <td><a href="#" title="Події по місяцях">09</a></td>
                <td><a href="#" title="Події по місяцях">10</a></td>
                <td><a href="#" title="Події по місяцях">11</a></td>
                <td><a href="#" title="Події по місяцях">12</a></td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>

      </div>
      <div class="uk-margin-medium-bottom">
        <h2>[[$langs? &uk=`Усі події` &ru=`Все события` &en=`All events`]]</h2>
        <div class="uk-child-width-1-1 uk-child-width-1-2@s  uk-child-width-1-3@m" data-uk-grid data-uk-height-match="target: > div > .uk-card">

          [[!pdoPage@sitePagination?
          &parents=`[[*id]]`
          &tpl=`@FILE chunks/news_card.tpl`
          &sortby=`{ "publishedon":"DESC" }`
          &offset=`1`
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
