{extends 'file:templates/layout.tpl'}

{block 'main'}

  {include "file:chunks/breadcrumbs.tpl"}

  <main class="main-page" role="main">
    <div class="uk-container">
      <div class="uk-margin-bottom">
        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
        <div class="uk-text-meta">[[*publishedon:date=`%d.%m.%Y`]]</div>
      </div>
    </div>

    <div class="uk-section uk-background-muted uk-margin-medium-bottom">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@m" data-uk-grid>
          <div>
            [[*introtext]]
          </div>
          <div>
            <div class="embed-responsive embed-responsive--2-1">
              <picture>
                <source data-srcset="[[*image:phpthumbon=`w=580&h=290&zc=C&f=webp&q=75`]]" media="(min-width: 992px)" type="image/webp">
                <source data-srcset="[[*image:phpthumbon=`w=580&h=290&zc=C&f=jpeg&q=75`]]" media="(min-width: 992px)">
                <!-- 580x290  -->
                <source data-srcset="[[*image:phpthumbon=`w=932&h=466&zc=C&f=webp&q=75`]]" media="(min-width: 640px)" type="image/webp">
                <source data-srcset="[[*image:phpthumbon=`w=932&h=466&zc=C&f=jpeg&q=75`]]" media="(min-width: 640px)">
                <!-- 932x466  -->
                <source data-srcset="[[*image:phpthumbon=`w=610&h=305&zc=C&f=webp&q=75`]]" type="image/webp">
                <img class="b-lazy" data-src="[[*image:phpthumbon=`w=610&h=305&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="610" height="305">
              </picture>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="uk-container uk-margin-large-bottom">
      <div data-uk-grid>
        <div class="uk-width-1-1 uk-width-3-5@m">
          <article class="content">
            [[*content]]
          </article>
        </div>

        <div class="uk-width-1-1 uk-width-2-5@m uk-position-relative">
          <div class="contact-form-aside uk-background-secondary uk-light">
            <h3>[[$langs? &uk=`Зареєструватися на курс` &ru=`Зарегистрироваться на курс` &en=`Register for the course`]]</h3>

            [[!FormIt?
            &preHooks=`checkSpamTime`
            &hooks=`email,redirect`
            &redirectTo=`[[BabelTranslation:default=`57`? &resourceId=`57` &contextKey=`[[*context_key]]`]]`
            &redirectParams=`{ "success":"1" }`
            &emailFrom=`postman@pestcontrol.org.ua`
            &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
            &emailTo=`[[++site_email]]`
            &emailBCC=`des.yogi@ukr.net`
            &emailSubject=`[[$langs? &uk=`Зареєструватися на курс` &ru=`Зарегистрироваться на курс` &en=`Register for the course`]] — [[*longtitle:default=`[[*pagetitle]]`]]`
            &validate=`activity:blank,name:required,email:email:required,tel:minLength=^10^:required`
            &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!` &en=`The form contains errors!`]]`
            &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
            &submitVar=`regform`
            ]]
            <form id="regform" action="[[~[[*id]]]]#regGo" method="post">
              <div class="uk-margin">
                <input id="regGo" class="uk-input" type="text" name="name" value="[[!+fi.name]]" placeholder="[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]">
                [[!+fi.error.name]]
              </div>
              <div class="uk-margin">
                <input class="visually-hidden" type="text" name="activity" value="">
                <input class="uk-input" type="email" name="email" value="[[!+fi.email]]" placeholder="Email">
                [[!+fi.error.email]]
              </div>
              <div class="uk-margin">
                <input class="uk-input" type="tel" name="tel" value="[[!+fi.tel]]" placeholder="[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]">
                [[!+fi.error.tel]]
              </div>
              <div class="uk-margin">
                <input form="regform" class="uk-button uk-button-primary uk-width-expand" type="submit" name="regform" value="[[$langs? &uk=`Зареєструватися` &ru=`Зарегистрироваться` &en=`Sign up`]]">
              </div>
            </form>
            
            [[+nowDate:default=`now`:strtotime:date=`%Y-%m-%d %H:%M`:lt=`[[*start_date:date=`%Y-%m-%d %H:%M`]]`:and:if=`[[*start_date]]`:ne=``:then=`
            <h4 class="uk-h3">[[$langs? &uk=`До початку залишилось` &ru=`До началу осталось` &en=`Before the beginning remained`]]:</h4>
            <div class="uk-grid-small uk-child-width-auto" data-uk-grid data-uk-countdown="date: [[*start_date:date=`%Y-%m-%dT%H:%M:00+00:00`]]">
              <div>
                <div class="uk-countdown-number uk-countdown-days"></div>
                <div class="uk-countdown-label uk-margin-small uk-text-center uk-visible@s">[[$langs? &uk=`Днів` &ru=`Дней` &en=`Days`]]</div>
              </div>
              <div class="uk-countdown-separator">:</div>
              <div>
                <div class="uk-countdown-number uk-countdown-hours"></div>
                <div class="uk-countdown-label uk-margin-small uk-text-center uk-visible@s">[[$langs? &uk=`Годин` &ru=`Часов` &en=`Hours`]]</div>
              </div>
              <div class="uk-countdown-separator">:</div>
              <div>
                <div class="uk-countdown-number uk-countdown-minutes"></div>
                <div class="uk-countdown-label uk-margin-small uk-text-center uk-visible@s">[[$langs? &uk=`Хвилин` &ru=`Минут` &en=`Minutes`Seconds]]</div>
              </div>
              <div class="uk-countdown-separator">:</div>
              <div>
                <div class="uk-countdown-number uk-countdown-seconds"></div>
                <div class="uk-countdown-label uk-margin-small uk-text-center uk-visible@s">[[$langs? &uk=`Секунд` &ru=`Секунд` &en=``]]</div>
              </div>
            </div>
            `:else=`
              <p class="uk-h6"><span class="uk-display-inline-blocks" style="transform: translateY(-2px)" data-uk-icon="icon: warning; ratio: 1.2"></span>&emsp;
              [[$langs? &uk=`Реєстрація закінчена або ще не починалася!` &ru=`Регистрация закончена или еще не начиналась!` &en=`Registration completed or not yet started!`]]</p>
            `]]

          </div>
        </div>
      </div>
    </div>
  </main>

{/block}
