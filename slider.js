const slides = document.querySelectorAll(".item");

    let current = 0;
    let prev = slides.length - 1;
    let next = 1;

    slides.forEach((slide, index) => {
        slide.addEventListener("click", () => {
            if (index === prev) {
                gotoPrev();
            } else if (index === next) {
                gotoNext();
            }
        });
    });

    const gotoPrev = () => current > 0 ? gotoNum(current - 1) : gotoNum(slides.length - 1);

    const gotoNext = () => current < slides.length - 1 ? gotoNum(current + 1) : gotoNum(0);

    const gotoNum = number => {
        current = number;
        prev = current - 1;
        next = current + 1;

        if (next === slides.length) {
            next = 0;
        }

        if (prev === -1) {
            prev = slides.length - 1;
        }

        slides.forEach((slide, index) => {
            slide.classList.remove("active", "prev", "next");
            if (index === current) {
                slide.classList.add("active");
            } else if (index === prev) {
                slide.classList.add("prev");
            } else if (index === next) {
                slide.classList.add("next");
            }
        });
    }