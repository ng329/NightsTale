import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  static targets = ["booking", "modal"]
  connect() {
    console.log("connect")
    console.log(this.bookingTarget)
  }

  // appear() {
  //   if (this.modalTarget.style.display === "none") {
  //     this.modalTarget.style.display = "block";
  //   } else {
  //     this.modalTarget.style.display = "none";
  //   }

  //   const bookingInfo = `<div class="container">
  //                     <h6></h6>
  //                     <p>${this.bookingTarget}</p>
  //                 </div>`
  //   this.modalTarget.insertAdjacentHTML("beforeend", bookingInfo)
  // }
}
