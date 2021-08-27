<!DOCTYPE html>
<html class="no-js  page" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <base href="[[++site_url]]">
  {block 'title'}
  <title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]</title>
  {/block}
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="MobileOptimized" content="320">
  <meta name="format-detection" content="telephone=no">
  <meta name="description" content="[[*description:notempty=`[[*description]]`]]">
  <meta name="keywords" content="[[+seoPro.keywords:notempty=`[[+seoPro.keywords]]`]]">
  <meta name="robots" content="[[+seoTab.robotsTag]]">

  <meta property="og:url"           content="[[~[[*id]]? &scheme=`full`]]" />
  <meta property="og:type"          content="website" />
  <meta property="og:site_name"     content="[[++site_name]] — [[++company_slogan]]" />
  <meta property="og:locale"        content="[[$langs? &uk=`uk_UA` &ru=`ru_UA`]]" />
  <meta property="og:image"         content="[[*og_img:ne=``:then=`[[++site_url]][[*og_img]]`:else=`[[++site_url]]assets/images/seo/sharing_home.jpg`]]" />
  <meta property="og:title"         content="[[*longtitle:default=`[[*pagetitle]]`]]" />
  <meta property="og:description"   content="[[*description:notempty=`[[*description]]`]]" />

  <link rel="canonical" href="[[~[[*id]]? &scheme=`full`]]">

  <link rel="preload" href="assets/fonts/ubuntu-v14-cyrillic_latin-regular.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/ubuntu-v14-cyrillic_latin-500.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/ubuntu-v14-cyrillic_latin-700.woff2" as="font" type="font/woff2" crossorigin>
  
  <link href="[[!modxMinify?&group=`styles`]]" rel="stylesheet" media="screen">
  <script>
    // Picture element HTML5 shiv
    document.createElement("picture");
  </script>
  <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
  <link rel="manifest" href="assets/img/site.webmanifest">
  <link rel="mask-icon" href="assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-148938345-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){ dataLayer.push(arguments); }
  gtag('js', new Date());

  gtag('config', 'UA-148938345-1');
</script>

</head>

<body>
<noscript>У вас отключен JavaScript. Приносим наши извинения, но это делает затруднительным использование данного сайта.</noscript>

  <div id="offcanvas" data-uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar" role="navigation">
      <button class="uk-offcanvas-close uk-close-large" type="button" data-uk-close aria-label="Закрыть меню"></button>

      [[pdoMenu?
      &parents=`0`
      &level=`2`
      &tplOuter=`@INLINE <ul class="uk-nav-primary uk-nav-parent-icon uk-margin-xlarge-top" data-uk-nav>[[+wrapper]]</ul>`
      &tpl=`@INLINE <li [[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
      &tplHere=`@INLINE <li class="uk-active"><a [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
      &tplParentRow=`@INLINE <li class="uk-parent"><a href="#" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
      &tplInner=`@INLINE <ul class="uk-nav-sub">[[+wrapper]]</ul>`
      ]]

      <div class="uk-hidden@s uk-margin-medium-top uk-margin-bottom">
        <form class="uk-search uk-search-default uk-width-expand">
          <a href="#" class="uk-search-icon-flip" data-uk-search-icon></a>
          <input class="uk-search-input" type="search" placeholder="Пошук...">
        </form>
      </div>
      <div class="uk-hidden@s">
        <button class="uk-button uk-button-default uk-width-expand" type="button">[[$langs? &uk=`Мова` &ru=`Язык` &en=`Lang`]]</button>
        <div class="uk-background-secondary uk-position-relative" data-uk-drop="mode: click; offset: 10">
          <ul class="uk-nav uk-margin-small-top uk-margin-small-bottom">
            [[BabelLinks? &tpl=`BabelLinksTpl` &showCurrent=`0`]]
          </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="page__inner" [[*template:is=`22`:or:if=`[[*template]]`:is=`12`:then=`style="min-height:0;margin-bottom:80px"`]]>
    <div class="page__content [[*template:is=`6`:then=`uk-background-primary`]]" id="target-top">

      <div [[*template:is=`1`:then=`class="page__top-bg  uk-background-secondary uk-light uk-background-center-center uk-background-cover uk-background-norepeat" style="background-image: url(assets/img/index-bg.jpg);"`:else=`class="page__noindex"`]]>
        <header class="[[*template:is=`1`:then=`page-header  uk-margin-large-bottom uk-light`:else=`page-header  uk-dark`]]" role="banner">
          <h1 class="visually-hidden">[[$langs? &uk=`Громадська спілка «Пест контроль України»` &ru=`Общественный союз «Пест контроль Украины»` &en=`Public Association «Pest Control of Ukraine»`]]</h1>
          <div class="uk-container">
            <nav class="uk-navbar-container uk-navbar-transparent" data-uk-navbar>
              <div class="uk-navbar-left">
                <a [[*template:ne=`1`:then=`href="/"`:else=`style="pointer-events:none;"`]] class="logo  uk-display-inline-block" title="Pest control of Ukraine">
                  <img class="uk-display-block" src="[[*template:is=`1`:then=`assets/img/pest-control-logo.svg`:else=`assets/img/pest-control-logo-onwhite.svg`]] " alt="Pest control logo">
                </a>
              </div>
              <div class="uk-navbar-right">

                <div class="uk-visible@s uk-inline">
                  <button class="uk-button uk-button-default" type="button">[[$langs? &uk=`Мова` &ru=`Язык` &en=`Lang`]]</button>
                  <div class="uk-background-secondary [[*template:ne=`1`:then=`uk-light`]]" data-uk-drop="mode: click; offset: 10" style="width: 100%">
                    <ul class="uk-list uk-margin-small-top uk-margin-small-bottom">
                      [[BabelLinks? &tpl=`BabelLinksTpl` &showCurrent=`0`]]
                    </ul>
                  </div>
                </div>
                
                <a class="uk-navbar-toggle uk-visible@s uk-margin-left" href="#modal-search" data-uk-search-icon="ratio: 1.3" data-uk-toggle></a>
                <a class="uk-navbar-toggle" data-uk-navbar-toggle-icon="ratio: 1.3" data-uk-toggle="target: #offcanvas" aria-label="[[$langs? &uk=`Відкрити меню` &ru=`Открыть меню` &en=`Open menu`]]"></a>
              </div>
            </nav>
          </div>
        </header>

      [[*template:is=`1`:then=`
        {include 'file:chunks/index_main_slider.tpl'}
      `]]

      </div>

      {block 'main'}

      {/block}

    </div>
  </div>

  <div class="page__footer-wrapper" id="target-bottom">

    <section class="subscribe-form  uk-background-primary uk-light">
      <div class="uk-container">
        <div class="uk-padding uk-padding-remove-horizontal" data-uk-grid>

          <div class="uk-width-1-1 uk-width-auto@m subscribe-form__title">
            <h3>[[$langs? &uk=`Пiдписатися на розсилку` &ru=`Подписаться на рассылку` &en=`Subscribe to newsletter`]]</h3>
          </div>
          <div class="uk-width-1-1 uk-width-1-2@s uk-width-1-3@m uk-margin-remove-top">
            [[!FormIt?
            &preHooks=`checkSpamTime`
            &hooks=`email,redirect`
            &redirectTo=`[[BabelTranslation:default=`57`? &resourceId=`57` &contextKey=`[[*context_key]]`]]`
            &redirectParams=`{ "success":"1" }`
            &emailFrom=`postman@pestcontrol.org.ua`
            &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
            &emailTo=`[[++site_email]]`
            &emailBCC=`des.yogi@ukr.net`
            &emailSubject=`[[$langs? &uk=`Підписка на розсилку з сайту` &ru=`Подписка на рассылку с сайта` &en=`Subscribe to the newsletter from`]] [[++site_name]]`
            &validate=`email:email:required`
            &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!` &en=`The form contains errors!`]]`
            &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
            &submitVar=`subscribeform`
            ]]
            <form id="subscribeForm" action="[[~[[*id]]]]#emailGo" method="post">
              <div class="subscribe-form__inline">
                <input id="emailGo" class="uk-input" type="email" name="email" value="[[!+fi.email]]" placeholder="Email">
                <div class="error-wrapper">[[!+fi.error.email]]</div>
              </div>
            </form>
          </div>
          <div class="uk-width-1-1 uk-width-1-2@s uk-width-auto@m uk-margin-remove-top">
            <input form="subscribeForm" class="uk-button uk-button-default uk-width-1-1" type="submit" name="subscribeform" value="[[$langs? &uk=`Надіслати` &ru=`Отправить` &en=`Submit`]]">
          </div>

        </div>

      </div>
    </section>

    <footer class="page-footer uk-background-secondary uk-light" role="contentinfo">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@l page-footer__top uk-margin-medium-top" data-uk-grid>
          <section class="uk-visible@s" role="navigation">
            <h2>[[$langs? &uk=`Меню` &ru=`Меню` &en=`Menu`]]</h2>

            [[pdoMenu?
            &parents=`0`
            &resources=`
            -[[BabelTranslation:default=`4`? &resourceId=`4` &contextKey=`[[*context_key]]`]],
            -[[BabelTranslation:default=`5`? &resourceId=`5` &contextKey=`[[*context_key]]`]],
            -[[BabelTranslation:default=`42`? &resourceId=`42` &contextKey=`[[*context_key]]`]],
            -[[BabelTranslation:default=`44`? &resourceId=`44` &contextKey=`[[*context_key]]`]]
            `
            &level=`2`
            &sortby=`{ "menuindex":"ASC" }`
            &tplOuter=`@INLINE <ul class="uk-child-width-1-1 uk-child-width-1-2@s" data-uk-grid>[[+wrapper]]</ul>`
            &tpl=`@INLINE <li><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a></li>`
            &tplHere=`@INLINE <li><a [[+attributes]] style="text-decoration:underline; pointer-events:none">[[+menutitle]]</a></li>`
            ]]
            
          </section>

          <section itemscope itemtype="http://schema.org/Organization">
            <h2>[[$langs? &uk=`Контакти` &ru=`Контакты` &en=`Contacts`]]</h2>
            <meta itemprop="name" content="[[$langs? &uk=`Громадська спілка Пест Контроль України` &ru=`Общественный союз Пест Контроль Украины` &en=`Public Association Pest Control of Ukraine`]]">
            <div class="uk-child-width-1-1 uk-child-width-1-2@s" data-uk-grid>
              <div>
                <div class="page-footer__address">
                  <dl itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                    {*<dt>Адреса:</dt>*}
                    {*<dd><span itemprop="addressLocality">г. Киев</span>, <span itemprop="streetAddress">ул. Акад. Заболотного, 154Д</span></dd>*}
                    <dt class="uk-margin-small-bottom">[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]:</dt>
                    <dd class="uk-margin-bottom">
                      <a href="tel:+[[++site_phone_1]]" class="uk-display-inline-block uk-margin-small-bottom" itemprop="telephone">[[++site_phone_1:phone_format]]</a><br>
                      <a href="tel:+[[++site_phone_2]]" itemprop="telephone">[[++site_phone_2:phone_format]]</a>
                    </dd>
                    <dt class="uk-margin-small-bottom">E-mail:</dt>
                    <dd><a href="mailto:[[++site_email]]" itemprop="email">[[++site_email]]</a></dd>
                  </dl>
                </div>
              </div>
              <div>
                <div class="page-footer__social">
                  <ul class="uk-child-width-1-2" data-uk-grid>
                    <li class="uk-text-left">
                      <a href="[[++fb_link]]" class="uk-flex-inline uk-flex-row-reverse uk-flex-right uk-flex-middle" data-uk-icon="icon: facebook; ratio: 1.3" target="_blank" rel="nofollow noopener">
                        <span class="uk-display-inline-block uk-margin-small-left">Facebook</span>
                      </a>
                    </li>
                    <li class="uk-text-left">
                      <a href="[[++youtube_link]]" class="uk-flex-inline uk-flex-row-reverse uk-flex-right uk-flex-middle" data-uk-icon="icon: youtube; ratio: 1.3" target="_blank" rel="nofollow noopener">
                        <span class="uk-display-inline-block uk-margin-small-left">Youtube</span>
                      </a>
                    </li>
                  </ul>
                  <p>[[++site_slogan]]</p>
                  <a [[*template:ne=`1`:then=`href="/"`:else=`style="pointer-events:none;"`]] class="logo uk-padding-remove-vertical uk-display-block" title="Pest Control of Ukraine">
                    <img class="uk-display-block" src="assets/img/pest-control-logo.svg" alt="Pest control logo">
                  </a>
                </div>
              </div>
            </div>
          </section>
        </div>
        <div class="uk-margin-bottom" data-uk-grid>
          <span class="uk-width-expand uk-text-small">2018-[[!+currentYear:default=`now`:strtotime:date=`%Y`]]. © Pest Control of Ukraine</span>
          <div class="page-footer__dev  uk-width-auto">
            <a href="https://it-doors.com" target="_blank" rel="nofollow noopener" title="IT-Doors Outsourcing">
              <img src="assets/img/it-doors-logo.svg" alt="IT-Doors Outsourcing" width="75" height="27">
            </a>
          </div>
        </div>
      </div>
    </footer>
  </div>

  <div id="modal-search" class="uk-modal-full uk-modal" data-uk-modal>
    <div class="uk-modal-dialog uk-flex uk-flex-center uk-flex-middle" data-uk-height-viewport>
      <button class="uk-modal-close-full uk-close-large" type="button" data-uk-close aria-label="[[$langs? &uk=`Закрити вікно пошуку` &ru=`Закрыть окно поиска` &en=`Close search box`]]"></button>
      <form class="uk-search uk-search-large" action="/" method="post">
        <input class="uk-search-input uk-text-center" type="search" placeholder="[[$langs? &uk=`Пошук` &ru=`Поиск` &en=`Search`]]..." autofocus>
      </form>
    </div>
  </div>

  <script src="[[!modxMinify?&group=`scripts`]]"></script>
  {block 'add_scripts'}{/block}

</body>
</html>







