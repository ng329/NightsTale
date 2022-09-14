import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  static targets = ["booking", "modal"]

  connect() {
    console.log("11")
  }

  appear(e) {
    if (this.modalTarget.style.display === "none") {
      // console.log(e.currentTarget.dataset.title)
      this.modalTarget.style.display = "block";
      const bookingInfo = `<div class="container">
                          <a href="/events/${e.currentTarget.dataset.eventid}">
                            <h6>${e.currentTarget.dataset.title}</h6>
                            <p>Location: ${e.currentTarget.dataset.location}</p>
                            <p>Start time: ${e.currentTarget.dataset.date}</p>
                            <p>Number of people: ${e.currentTarget.dataset.people}</p>
                            <p>Total price: ${new Intl.NumberFormat('ja-JP', { style: 'currency', currency: 'GBP' }).format(e.currentTarget.dataset.price)}</p>
                          </a>
                          <a href="/users/${e.currentTarget.dataset.userid}">
                            <p>Booked by: ${e.currentTarget.dataset.userbooked}</p>
                          </a>
                    </div>`
      this.modalTarget.innerHTML = bookingInfo;
      this.modalTarget.scrollIntoView(true)
    } else {
      window.scrollTo({ top: 0, behavior: 'smooth' })
      this.timeout = setTimeout(() => (
        this.modalTarget.style.display = "none"
      ), 200);
    }
  }
}
