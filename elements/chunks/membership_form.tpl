<section class="uk-margin-large-bottom  membership-form">
  <div data-uk-grid data-uk-height-match="target: > div > .uk-card">
    <div class="uk-width-1-1 uk-width-1-3@m">
      <div class="uk-card uk-card-default uk-card-body uk-background-muted">
        <h2>[[$langs? &uk=`Заявка на вступ` &ru=`Заявка на вступление` &en=`Application for membership`]]</h2>
      </div>
    </div>
    <div class="uk-width-1-1 uk-width-2-3@m">
      <div class="uk-card uk-card-default  membership-form__wrapper">
        [[!FormIt?
        &preHooks=`checkSpamTime`
        &hooks=`email,redirect`
        &redirectTo=`[[BabelTranslation:default=`57`? &resourceId=`57` &contextKey=`[[*context_key]]`]]`
        &redirectParams=`{ "success":"1" }`
        &emailFrom=`postman@pestcontrol.org.ua`
        &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
        &emailTo=`[[++site_email]]`
        &emailBCC=`des.yogi@ukr.net`
        &emailSubject=`[[$langs? &uk=`Заявка на вступ` &ru=`Заявка на вступление` &en=`Application for membership`]] | [[++site_name]]`
        &validate=`activity:blank,name:required,email:email:required,tel:minLength=^10^:required,message:required`
        &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!` &en=`The form contains errors!`]]`
        &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
        &submitVar=`membershipform`
        ]]

        <form id="membershipform" action="[[~[[*id]]]]#memberGo" method="post">
          <div class="uk-child-width-1-1 uk-child-width-1-2@s" data-uk-grid>
            <div>
              <div class="uk-margin">
                <input id="memberGo" class="uk-input" type="text" name="name" value="[[!+fi.name]]" placeholder="[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]">
                [[!+fi.error.name]]
              </div>
              <div class="uk-margin">
                <input class="visually-hidden" type="text" name="activity" value="">
                <input class="uk-input" type="tel" name="tel" value="[[!+fi.tel]]" placeholder="[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]">
                [[!+fi.error.tel]]
              </div>
              <div class="uk-margin">
                <input class="uk-input" type="email" name="email" value="[[!+fi.email]]" placeholder="Email">
                [[!+fi.error.email]]
              </div>
            </div>
            <div>
              <div class="uk-margin">
                <textarea class="uk-textarea" rows="3" name="message" value="[[!+fi.message]]" placeholder="[[$langs? &uk=`Повідомлення` &ru=`Сообщение` &en=`Message`]]" style="height: 101px;"></textarea>
                [[!+fi.error.message]]
              </div>
              <div class="uk-margin">
                <input form="membershipform" class="uk-button uk-button-primary uk-width-expand  membership-form__submit" type="submit" name="membershipform" value="[[$langs? &uk=`Надіслати` &ru=`Отправить` &en=`Submit`]]">
              </div>
              <div class="uk-margin-top">
                <label class="uk-form-label">
                  <input id="agreement" class="uk-checkbox" type="checkbox" checked>
                  <span class="uk-margin-small-left">[[$langs? &uk=`Дозволяю обробку персональної інформації` &ru=`Разрешаю обработку персональной информации` &en=`I allow the processing of personal information`]]</span>
                </label>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
