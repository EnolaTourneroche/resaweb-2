
document.addEventListener("DOMContentLoaded", function () { 


        var photosWrapper = document.querySelector('.js-photos');
        var photos = document.querySelectorAll('.js-photo');
        var photoWidth = 100;
    
        var btnDecaleGauche = document.querySelector('.prev-btn');
        var btnDecaleDroite = document.querySelector('.next-btn');
    
        var position = 1;
        var minPosition = 0;
        var maxPosition = photos.length - 1;
    
        function decaleGauche() {
            position++;
    
            if (position > maxPosition) {
                retourDebut();
                setTimeout(function() {
                    photosWrapper.classList.remove('no-anime');
                    decaleGauche();
                }, 20);
            } else {
                photosWrapper.style.left = position * -photoWidth + "vw";
            }
        }
        function decaleDroite() {
            position++;
            if (position > maxPosition) {
                retourDebut();
                setTimeout(function() {
                    photosWrapper.classList.remove('no-anime');
                    decaleDroite();
                }, 20);
            } else {
                photosWrapper.style.left = position * -photoWidth + "vw";
            }
        }
    
        function retourDebut() {
            position = minPosition + 1;
            photosWrapper.classList.add('no-anime');
            photosWrapper.style.left = position * -photoWidth + "vw";
        }
    
        function retourFin() {
            position = maxPosition - 1;
            photosWrapper.classList.add('no-anime');
            photosWrapper.style.left = position * -photoWidth + "vw";
        }
    
        setInterval(decaleGauche, 4000);
        btnDecaleGauche.addEventListener('click', decaleGauche);
        btnDecaleDroite.addEventListener('click', decaleDroite);


});
