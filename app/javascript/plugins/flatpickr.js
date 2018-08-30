import flatpickr from "flatpickr"
import "flatpickr/dist/themes/confetti.css" // A path to the theme CSS

flatpickr(".datepicker", {})

import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#range_start", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
}).sleep(3);
