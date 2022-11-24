import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "finishDate" ]
  connect() {
    console.log("conectou")
    flatpickr(this.startDateTarget, {})
    flatpickr(this.finishDateTarget, {})
  }
}
