const tempMails = [
    'uooos.com', 'nthrw.com', 'bbitq.com', 'alldrys.com', 'moabuild.com',
    '20minutemail.it', 'diolang.com', 'aosod.com', 'sharklasers.com', 'guerrillamail.info',
    'grr.la', 'guerrillamail.biz', 'guerrillamail.com', 'guerrillamail.de', 'guerrillamail.net',
    'guerrillamail.org', 'guerrillamailblock.com', 'pokemail.net', 'spam4.me', 'musiccode.me',
    'lyricspad.net', 'vusra.com', 'gufum.com', 'best-john-boats.com', 'trickyfucm.com',
    'smartinbox.online', 'goonby.com', 'plexfirm.com', '10mail.org', 'firste.ml',
    'zeroe.ml', 'vintomaper.com', 'fillallin.com', 'mailsac.com', 'mails.omvvim.edu.in',
    'onetimeusemail.com', 'midiharmonica.com', 'yopmail.com', 'crazymailing.com', 'wemel.site',
    'mybx.site', 'emeil.top', 'mywrld.top', 'matra.top', 'memsg.site', 'emailnax.com',
    'inboxbear.com', 'trashmail.fr', 'trashmail.se', 'my10minutemail.com'
];

document.querySelectorAll('input[type="email"]').forEach(function(emailInput) {
    emailInput.addEventListener('input', function() {
        const emailField = this;
        const emailValue = emailField.value;
        const domain = emailValue.split('@')[1];

        let parentForm = emailField;
        while (parentForm && parentForm.nodeName !== 'FORM') {
            parentForm = parentForm.parentNode;
        }

        const submitButton = parentForm ? parentForm.querySelector('button') : null;

        let errorMessage = emailField.nextElementSibling;
        if (!errorMessage || !errorMessage.classList.contains('error-message')) {
            errorMessage = document.createElement('div');
            errorMessage.classList.add('error-message');
            errorMessage.style.color = 'red';
            errorMessage.style.display = 'none';
            errorMessage.textContent = 'Domaine email non autorisé.';
            emailField.parentNode.insertBefore(errorMessage, emailField.nextSibling);
        }

        if (domain && tempMails.includes(domain)) {
            emailField.classList.add('invalid-domain');
            if (errorMessage) errorMessage.style.display = "block";
            if (submitButton) submitButton.disabled = true;
        } else {
            emailField.classList.remove('invalid-domain');
            if (errorMessage) errorMessage.style.display = "none";
            if (submitButton) submitButton.disabled = false;
        }
    });
});
