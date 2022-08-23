import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbar", "banner"]

  connect() {
    if (this.hasBannerTarget) {
      this.navbarTarget.style.backgroundColor = "transparent"
    }
  }

  updateNavbar() {
    if (!this.hasBannerTarget) {
      return
    }
    if (window.scrollY >= (this.bannerTarget.offsetHeight / 2)) {
      this.navbarTarget.classList.add("navbar-lewagon-black")
    } else {
      this.navbarTarget.classList.remove("navbar-lewagon-black")
    }
  }
}
