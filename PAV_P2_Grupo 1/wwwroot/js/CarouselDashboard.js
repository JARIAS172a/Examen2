
document.addEventListener("DOMContentLoaded", function () {
    const carousel = document.querySelector("#productos-carousel .d-flex");
    const prevBtn = document.getElementById("btn-prev-producto");
    const nextBtn = document.getElementById("btn-next-producto");

    let currentIndex = 0;
    const items = carousel.children.length;
    const itemWidth = 260; // incluyendo márgenes

    function updateCarousel() {
        const offset = currentIndex * itemWidth;
        carousel.style.transform = `translateX(-${offset}px)`;
    }

    nextBtn.addEventListener("click", () => {
        if (currentIndex < items - 1) {
            currentIndex++;
            updateCarousel();
        }
    });

    prevBtn.addEventListener("click", () => {
        if (currentIndex > 0) {
            currentIndex--;
            updateCarousel();
        }
    });

    // Inicial
    carousel.style.transition = "transform 0.3s ease-in-out";
});

