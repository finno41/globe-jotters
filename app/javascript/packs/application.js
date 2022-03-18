// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import $ from 'jquery'
import select2 from 'select2'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"

$(document).ready(function() {
  // init select2 pligin
  $('.select2-dropdown').select2();

  // listen for the `select` event on the dropdown
  $('.select2-dropdown').on('select2:select', function (event) {
    // Get the option from the select dropdown
    const data = event.params.data;

    // If there is a URL to redirect to, redirect to that
    if (data.id) {
      window.location.href = data.id;
    }
  });
});
