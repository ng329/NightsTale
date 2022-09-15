import { Controller } from "@hotwired/stimulus";
import Swiper, { Navigation, Pagination } from "swiper";
// import 'swiper/css/bundle';
// import 'swiper/css';
// import 'swiper/css/pagination'

// import Carousel from "stimulus-carousel"
// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    Swiper.use([Navigation, Pagination]);

    const swiper = new Swiper('.swiper', {
      speed: 400,
      spaceBetween: 0,
      // effect: 'fade',

      pagination: {
        el: '.swiper-pagination',
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    }

    );
    console.log(swiper)
  }
}
