import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["popular", "map", "profile"]
  connect() {
    console.log("Am I connected?")
  }

  popularSelect() {
    this .popularTarget.classList.add("active-page")
    this .mapTarget.classList.remove("active-page")
    this .profileTarget.classList.remove("active-page")
  }
}
