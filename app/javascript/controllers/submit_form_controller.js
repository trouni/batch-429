import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['content', 'reviews']

  connect() {
  }

  submit(event) {
    event.preventDefault()
    const url = window.location.pathname + '/reviews'
    fetch(url, {
      method: 'POST',
      headers: {
        "X-CSRF-Token": csrfToken(),
        accept: 'application/json',
        "Content-Type": 'application/json'
      },
      body: JSON.stringify({
        review: {
          content: this.contentTarget.value
        }
      })
    }).then(response => response.json())
    .then(data => {
      this.reviewsTarget.insertAdjacentHTML('afterBegin', data.reviewHTML)
    })
  }
}
