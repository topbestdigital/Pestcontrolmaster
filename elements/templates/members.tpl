{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}

  <main class="main-page" role="main">
    <div class="uk-container">
      <div class="uk-section uk-section-default uk-padding-remove-vertical">
        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>

        {*<hr>
        <form class="uk-margin-medium-top uk-margin-bottom  filter-member" action="/" method="post">
          <div class="uk-flex-between@l" data-uk-grid>
            <div class="uk-width-1-1 uk-width-3-5@m uk-width-1-2@l">
              <div data-uk-grid>
                <div class="uk-width-1-1 uk-width-auto@s">
                  <h4>Послуги які надає компанія:</h4>
                </div>
                <div class="uk-width-1-1 uk-width-expand@s">
                  <div>
                    <select class="uk-select uk-width-expand">
                      <option value>Хімічна промисловість</option>
                      <option value>Хімічна промисловість 02</option>
                      <option value>Хімічна промисловість 03</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
            <div class="uk-width-1-1 uk-width-2-5@m">
              <div data-uk-grid>
                <div class="uk-width-1-1 uk-width-auto@s">
                  <h4>По регіону:</h4>
                </div>
                <div class="uk-width-1-1 uk-width-expand@s">
                  <div>
                    <select class="uk-select uk-width-expand">
                      <option value>Житомир</option>
                      <option value>Житомир 02</option>
                      <option value>Житомир 03</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>*}

      </div>

      <section class="uk-margin-medium-top  member-cards">
        <ul class="uk-list">
          [[!pdoPage@sitePagination?
          &parents=`[[*id]]`
          &tpl=`@FILE chunks/member_card.tpl`
          &sortby=`{ "publishedon":"DESC" }`
          &limit=`5`
          &includeTVs=`memberLogo,member_activity,member_phone,member_email,member_site`
          &includeContent=`1`
          ]]
        </ul>
      </section>
      <div role="navigation">
        [[!+page.nav]]
      </div>
    </div>
  </main>

{/block}
