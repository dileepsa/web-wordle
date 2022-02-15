source tests/assert.sh
source web_wordle_library.sh

function generate_page_test_cases () {
  local description="Should generate page for wordle."
  local wordle_template="templates/wordle_template" 
  local words="cat bat"
  local similarities="101 102"
  local expected=`cat tests/generate_page_expected`

  local actual=$( generate_page ${wordle_template} "${words}" "${similarities}")
  assert_expectation "${words} ${similarities}" "${actual}" "${expected}" "${description}" "generate_page"
}

# generate_page_test_cases
# generate_report
