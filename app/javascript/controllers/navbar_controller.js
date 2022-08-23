import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbar", "banner"]

  connect() {
    console.log('hello')
    if (this.hasBannerTarget) {
      this.navbarTarget.classList.add("navbar-lewagon-transparent")
    }
  }

  updateNavbar() {
    console.log("hi")
    if (!this.hasBannerTarget) {
      return
    }
    console.log({offset: this.bannerTarget.offsetHeight / 2, scrollY: window.scrollY})
    if (window.scrollY >= (this.bannerTarget.offsetHeight / 2)) {
      this.navbarTarget.classList.add("navbar-lewagon-black")
    } else {
      this.navbarTarget.classList.remove("navbar-lewagon-black")
    }
  }
}
