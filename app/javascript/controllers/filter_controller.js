import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["button", "modal"]
  connect() {
    console.log("connected")
  }

  formsubmit(event) {
    console.log(event)
    event.preventDefault()
  }

  appear() {
    if (this.modalTarget.style.display === "none") {
      this.modalTarget.style.display = "block";
    } else {
      this.modalTarget.style.display = "none";
    }
    console.log("finished")
  }
}
