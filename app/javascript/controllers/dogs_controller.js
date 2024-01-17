import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }

  fetch_image() {
    const element = document.getElementById("breedInput").value
    this.url = `/dogs/fetch_dog?breed=${element}` 
    fetch(this.url,{
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
    .then(response => response.text())
    .then(html => Turbo.renderStreamMessage(html))
  }
}
