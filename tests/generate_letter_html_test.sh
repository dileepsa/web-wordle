#! /bin/bash
source tests/assert.sh
source web_wordle_library.sh

function test_generate_letter_html () {
  local description="Should generate html for letters."
  local word="hai"
  local similarities="012"
  local expected="<div class=\"not-match letter\">H</div><div class=\"match letter\">A</div><div class=\"exact-match letter\">I</div>"

  local actual=$( generate_letter_html ${word} ${similarities} )
  assert_expectation "${word} ${similarities}" "${actual}" "${expected}" "${description}" "generate_letter_html"
}


function generate_letter_html_test_cases () {
  test_generate_letter_html
}

# generate_letter_html_test_cases
# generate_report