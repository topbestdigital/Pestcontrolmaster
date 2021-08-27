{extends 'file:templates/layout.tpl'}

{block 'main'}
  
  {include "file:chunks/breadcrumbs.tpl"}
  
  <main class="main-page" role="main">
    <div class="uk-container">
      <section class="about">
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-margin-medium-bottom" data-uk-grid>
          <div>
            <div class="about__text">
              <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              <div class="about__intro">
                [[*introtext]]
              </div>
            </div>
          </div>
          <div>
            <div class="embed-responsive embed-responsive--3-2">
              <picture>
                <source data-srcset="[[*about_image:phpthumbon=`w=580&h=387&zc=C&f=webp&q=75`]]" media="(min-width: 992px)" type="image/webp">
                <source data-srcset="[[*about_image:phpthumbon=`w=580&h=387&zc=C&f=jpeg&q=75`]]" media="(min-width: 992px)">
                <!-- 580x387 -->
                <source data-srcset="[[*about_image:phpthumbon=`w=441&h=294&zc=C&f=webp&q=75`]]" media="(min-width: 640px)" type="image/webp">
                <source data-srcset="[[*about_image:phpthumbon=`w=441&h=294&zc=C&f=jpeg&q=75`]]" media="(min-width: 640px)">
                <!-- 441x294 -->
                <source data-srcset="[[*about_image:phpthumbon=`w=610&h=487&zc=C&f=webp&q=75`]]" media="(min-width: 480px)" type="image/webp">
                <source data-srcset="[[*about_image:phpthumbon=`w=610&h=487&zc=C&f=jpeg&q=75`]]" media="(min-width: 480px)">
                <!-- 610x487 -->
                <source data-srcset="[[*about_image:phpthumbon=`w=450&h=300&zc=C&f=webp&q=75`]]" type="image/webp">
                <img class="b-lazy" data-src="[[*about_image:phpthumbon=`w=450&h=300&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="450" height="300">
              </picture>
            </div>
          </div>
        </div>

        <div class="about__history  uk-child-width-1-1 uk-child-width-1-2@m uk-margin-xlarge-bottom" data-uk-grid data-uk-height-match="target: > div > .uk-panel">
          [[!getImageList?
          &tvname=`about_features`
          &tpl=`about_features_tpl`
          &docid=`[[*id]]`
          &limit=`4`
          ]]
        </div>

        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-margin-large-bottom" data-uk-grid>
          [[!getImageList?
          &tvname=`public_council`
          &tpl=`public_council_tpl`
          &docid=`[[*id]]`
          &limit=`1`
          ]]
        </div>
                
        <div class="about__diagram  uk-margin-large-bottom">
          <h2 class="visually-hidden">[[$langs? &uk=`Охоплення бізнесу в залежності від розміру` &ru=`Охват бизнеса в зависимости от размера` &en=`Business coverage by size`]]</h2>
          <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m" data-uk-grid>
            [[!getImageList?
            &tvname=`about_pie_chart`
            &tpl=`about_pie_chart_tpl`
            &docid=`[[*id]]`
            &limit=`3`
            ]]
          </div>
        </div>

        [[!pdoResources?
        &parents=`2`
        &resources=`[[BabelTranslation:default=`45`? &resourceId=`45` &contextKey=`[[*context_key]]`]]`
        &depth=`0`
        &tpl=`@FILE chunks/about__leader.tpl`
        &includeTVs=`head_photo,head_tel,head_email`
        &includeContent=`1`
        &toPlaceholder=`leader`
        ]]

        [[+leader:notempty=`[[+leader]]`]]

      </section>
    </div>

    <section class="advertising-block uk-section-small uk-section-muted  uk-margin-large-bottom">
      <div class="uk-container">
        <h3 class="uk-margin-medium-bottom">
          [[$langs? &uk=`Установчі та інші документи ГС «Пест контроль України»` &ru=`Учредительные и иные документы ОО «Пест контроль Украины»` &en=`Constituent and other documents of the PA «Pest Control of Ukraine»`]]
        </h3>

        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m" data-uk-grid>

          <div>
            <a class="uk-button uk-button-primary uk-width-expand" href="[[~[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]]]">
              [[pdoField? &id=`[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
            </a>
          </div>

          <div>
            <a class="uk-button uk-button-primary uk-width-expand" href="[[~[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]]]">
              [[pdoField? &id=`[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
            </a>
          </div>

          <div>
            <a class="uk-button uk-button-primary uk-width-expand" href="[[~[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]]]">
              [[pdoField? &id=`[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
            </a>
          </div>
          
          {*<div class="uk-inline-clip uk-transition-toggle">
            <a href="#" class="advertising-block__item embed-responsive embed-responsive--3-2">
              <picture>
                <source data-srcset="assets/img/docs-bg.webp" media="(min-width: 992px)" type="image/webp">
                <source data-srcset="assets/img/docs-bg.jpg" media="(min-width: 992px)">
                <!-- 375x250 -->
                <source data-srcset="assets/img/docs-bg.webp" media="(min-width: 640px)" type="image/webp">
                <source data-srcset="assets/img/docs-bg.jpg" media="(min-width: 640px)">
                <!-- 450x300 -->
                <source data-srcset="assets/img/docs-bg.webp" type="image/webp">
                <img class="b-lazy" data-src="assets/img/docs-bg.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="Alt Text" width="610" height="405">
              </picture>
              <div class="uk-transition-fade uk-position-cover uk-overlay uk-overlay-primary uk-flex uk-flex-center uk-flex-middle">
                <h4 class="uk-h4 uk-margin-remove" style="color:#fff!important">Заголовок</h4>
              </div>
            </a>
          </div>
          <div class="uk-inline-clip uk-transition-toggle">
            <a href="#" class="advertising-block__item embed-responsive embed-responsive--3-2">
              <picture>
                <source data-srcset="assets/img/docs-bg.webp" media="(min-width: 992px)" type="image/webp">
                <source data-srcset="assets/img/docs-bg.jpg" media="(min-width: 992px)">
                <!-- 375x250 -->
                <source data-srcset="assets/img/docs-bg.webp" media="(min-width: 640px)" type="image/webp">
                <source data-srcset="assets/img/docs-bg.jpg" media="(min-width: 640px)">
                <!-- 450x300 -->
                <source data-srcset="assets/img/docs-bg.webp" type="image/webp">
                <img class="b-lazy" data-src="assets/img/docs-bg.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="Alt Text" width="610" height="405">
              </picture>
              <div class="uk-transition-fade uk-position-cover uk-overlay uk-overlay-primary uk-flex uk-flex-center uk-flex-middle">
                <h4 class="uk-h4 uk-margin-remove" style="color:#fff!important">Заголовок</h4>
              </div>
            </a>
          </div>
          <div class="uk-inline-clip uk-transition-toggle">
            <a href="#" class="advertising-block__item embed-responsive embed-responsive--3-2">
              <picture>
                <source data-srcset="assets/img/docs-bg.webp" media="(min-width: 992px)" type="image/webp">
                <source data-srcset="assets/img/docs-bg.jpg" media="(min-width: 992px)">
                <!-- 375x250 -->
                <source data-srcset="assets/img/docs-bg.webp" media="(min-width: 640px)" type="image/webp">
                <source data-srcset="assets/img/docs-bg.jpg" media="(min-width: 640px)">
                <!-- 450x300 -->
                <source data-srcset="assets/img/docs-bg.webp" type="image/webp">
                <img class="b-lazy" data-src="assets/img/docs-bg.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="Alt Text" width="610" height="405">
              </picture>
              <div class="uk-transition-fade uk-position-cover uk-overlay uk-overlay-primary uk-flex uk-flex-center uk-flex-middle">
                <h4 class="uk-h4 uk-margin-remove" style="color:#fff!important">Заголовок</h4>
              </div>
            </a>
          </div>*}

        </div>
      </div>
    </section>

    <div class="uk-container">
      {include 'file:chunks/membership_form.tpl'}
    </div>

  </main>
{/block}
