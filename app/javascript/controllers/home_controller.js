import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form-control"]

  keyup() {
    console.log("keyup");
    }
  }
