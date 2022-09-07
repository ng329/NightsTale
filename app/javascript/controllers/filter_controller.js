import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["button", "modal", "filterbutton", "form", "outdoor", "food"]
  connect() {
    console.log("connected")
  }

  formsubmit(event) {
    console.log(event)
    event.preventDefault()
  }

  toggleimage(event) {
    // console.log(event.target)
    if (event.target.classList.contains("active")){
      event.target.classList.remove("active")
    } else {
      event.target.classList.add("active")
    }
  }

  // filtersubmit(event) {
  //   console.log(event)
  //   let params = ""
  //   if (this.outdoorTarget.classList.contains("active")){
  //     params = params.concat(" ", "outdoor")
  //   }
  //   if (this.foodTarget.classList.contains("active")){
  //     params = params.concat(" ", "food")
  //   }
  //   const url = `/events`
  //   fetch(url, {
  //     method: "GET",
  //     headers: {"Accept": "text/plain"},
  //     body: params
  //   })
  //   .then(response => response.text())
  //   .then((data) => {
  //     this.listTarget.outerHTML = data
  //   })

  //   // this.modalTarget.style.display === "none"
  // }

  appear() {
    if (this.modalTarget.style.display === "none") {
      this.modalTarget.style.display = "block";
    } else {
      this.modalTarget.style.display = "none";
    }
  }
}
