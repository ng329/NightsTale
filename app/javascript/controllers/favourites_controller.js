import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="favourites"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("connected")
  }

  toggleFavourite(event) {
    // console.log(this.pathValue)

    if (this.buttonTarget.classList.contains('added')){
      this.buttonTarget.classList.remove("added")
      this.buttonTarget.classList.remove("fa-solid")
      this.buttonTarget.classList.add("fa-regular")
      // send to destroy
    } else {
      this.buttonTarget.classList.add("added")
      this.buttonTarget.classList.remove("fa-regular")
      this.buttonTarget.classList.add("fa-solid")
      // send to add
    }


  }
}
