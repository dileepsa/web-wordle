#! /bin/bash
source tests/assert.sh
source web_wordle_library.sh

function capitalize_lowercase () {
  local description="Should capitalize lowercased word."
  local word="apple"
  local expected="APPLE"

  local actual=$( capitalize ${word} )
  assert_expectation "${word}" "${actual}" "${expected}" "${description}" "capitalize"
}

function capitalize_uppercase () {
  local description="Should capitalize uppercased word."
  local word="BALL"
  local expected="BALL"

  local actual=$( capitalize ${word} )
  assert_expectation "${word}" "${actual}" "${expected}" "${description}" "capitalize"
}

function capitalize_test_cases () {
  capitalize_lowercase
  capitalize_uppercase
}

# capitalize_test_cases