import { Controller } from "@hotwired/stimulus";
import Swiper, { Navigation, Pagination} from "swiper";
// import 'swiper/css/bundle';
// import 'swiper/css';
// import 'swiper/css/pagination'

// import Carousel from "stimulus-carousel"
// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    const swiper = new Swiper('.swiper', {
      speed: 400,
      spaceBetween: 100,

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
