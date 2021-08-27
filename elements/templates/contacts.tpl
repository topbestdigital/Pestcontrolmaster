{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}

  <main class="main-page" role="main">
    <div class="uk-container">
      <div class="uk-child-width-1-1 uk-child-width-1-2@m uk-margin-large-bottom" data-uk-grid itemscope itemtype="http://schema.org/Organization">
        <meta itemprop="name" content="Pest Control of Ukraine — [[$langs? &uk=`громадська спілка` &ru=`общественный союз` &en=`Public Association`]]">
        <div>
          <div class="address-block uk-dark">
            <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
            <dl class="address-block__descr-list" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
              {*<div class="uk-margin-bottom  address-block__descr-inner">
                <dt>Адреса</dt>
                <dd><span itemprop="streetAddress">Очаківський пров. 5/6</span>, <span itemprop="addressLocality">Київ</span>, <span itemprop="postalCode">03151</span>
                </dd>
              </div>*}
              <div class="uk-margin-bottom  address-block__descr-inner">
                <dt>[[$langs? &uk=`Телефони` &ru=`Телефони` &en=`Phones`]]</dt>
                <dd>
                  <a href="tel:+[[++site_phone_1]]" title="[[$langs? &uk=`Телефон офісу` &ru=`Телефон офиса` &en=`Office phone`]]" itemprop="telephone">[[++site_phone_1:phone_format]]</a><br>
                  <a href="tel:+[[++site_phone_2]]" title="[[$langs? &uk=`Телефон офісу` &ru=`Телефон офиса` &en=`Office phone`]]" itemprop="telephone">[[++site_phone_2:phone_format]]</a>
                </dd>
              </div>
              <div class="address-block__descr-inner">
                <dt>Email</dt>
                <dd>
                  <a href="mailto:[[++site_email]]" title="Email" itemprop="email">[[++site_email]]</a><br>
                </dd>
              </div>
            </dl>
          </div>
        </div>
        <div>
          <div class="map-block" itemscope itemprop="hasMap" itemtype="http://schema.org/Map">
            <iframe class="b-lazy" data-src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1270.8487491677176!2d30.451938662728473!3d50.42810747285138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4ceb000edffa3%3A0x4d234e90becf6884!2z0J7Rh9Cw0LrQvtCy0YHQutC40Lkg0L_QtdGALiwgNS82LCDQmtC40LXQsiwgMDIwMDA!5e0!3m2!1sru!2sua!4v1566576862115!5m2!1sru!2sua" style="border:0; width:100%; height:100%" allowfullscreen title="[[$langs? &uk=`Місце розташування офісу` &ru=`Место расположения офиса` &en=`Office location`]]"></iframe>
          </div>
        </div>
      </div>
    </div>
  </main>

{/block}
