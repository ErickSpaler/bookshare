import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preview"
export default class extends Controller {
  static targets = ['image']
  connect() {
  }

  img(event) {
    const url = event.target.value
    const image = `<img src='${url}' style='width: 200px;'>`
    console.log(url)
    this.imageTarget.outerHTML = image
  }
}
