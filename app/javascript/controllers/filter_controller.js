import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["button", "modal", "filterbutton"]
  connect() {
    console.log("connected")
  }

  appear() {
    if (this.modalTarget.style.display === "none") {
      this.modalTarget.style.display = "block";
    } else {
      this.modalTarget.style.display = "none";
    }
  }
}
