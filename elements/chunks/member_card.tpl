<li class="member-cards__item  uk-margin-medium-bottom">
  <div class="member-cards__inner" data-uk-grid data-uk-height-match="target: > div > .uk-panel">
    <div class="uk-width-1-1 uk-width-1-3@s uk-width-1-5@m uk-margin-remove-top">
      <div class="uk-panel  uk-panel__logo uk-flex uk-flex-center uk-flex-middle">
        <a href="[[+uri]]" title="[[+longtitle:default=`[[+pagetitle]]`]]">
          <img data-src="[[+tv.memberLogo:phpthumbon=`w=210&far=C&f=jpeg&bg=FFFFFF&q=90`]]" alt="[[+pagetitle]] logo" data-uk-img>
        </a>
      </div>
    </div>
    <div class="uk-width-1-1 uk-width-2-3@s uk-width-2-5@m uk-margin-remove-top">
      <div class="uk-panel uk-background-muted">
        <h3 class="uk-text-primary">[[+longtitle:default=`[[+pagetitle]]`]]</h3>
        <span class="uk-h5">[[+tv.member_activity]]</span>
      </div>
    </div>
    <div class="uk-width-1-1 uk-width-1-1@s uk-width-2-5@m uk-margin-remove-top">
      <div class="uk-panel  uk-panel__descr">
        <div class="uk-margin-bottom">[[+content:ellipsis=`250`]]</div>
        <a href="tel:+[[+member_phone]]" class="uk-inline-block uk-margin-small-bottom">[[+tv.member_phone:phone_format]]</a><br>
        <a href="mailto:[[+member_email]]" class="uk-inline-block">[[+tv.member_email]]</a>
        <p class="uk-text-right">
          <a href="[[+uri]]" class="uk-button uk-button-default">[[$langs? &uk=`Детальніше` &ru=`Подробнее` &en=`Read more`]]</a>
        </p>
      </div>
    </div>
  </div>
</li>
