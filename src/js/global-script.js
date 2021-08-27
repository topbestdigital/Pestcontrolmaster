(function(){

  var bLazy = new Blazy({
    selector: '.b-lazy'
  });
  //bLazy.revalidate();

}());

(function () {
  const submitBtn = document.querySelector('.membership-form__submit');
  const agreementCheckbox = document.querySelector('#agreement');
  const agreementHandler = function (e) {
    if (!this.checked) {
      submitBtn.disabled = true;
    } else {
      submitBtn.disabled = false;
    }
  };

  if (agreementCheckbox) {
    agreementCheckbox.addEventListener('change', agreementHandler);
  }
})();
