#! /bin/bash
source tests/assert.sh
source web_wordle_library.sh

function select_not_match () {
  local description="Should provide class not-match."
  local flag=0
  local expected="not-match"

  local actual=$( get_class ${flag} )
  assert_expectation "${flag}" "${actual}" "${expected}" "${description}" "get_class"
}

function select_match () {
  local description="Should provide class match."
  local flag=1
  local expected="match"

  local actual=$( get_class ${flag} )
  assert_expectation "${flag}" "${actual}" "${expected}" "${description}" "get_class"
}

function select_exact_match () {
  local description="Should provide class exact-match."
  local flag=2
  local expected="exact-match"

  local actual=$( get_class ${flag} )
  assert_expectation "${flag}" "${actual}" "${expected}" "${description}" "get_class"
}

function select_empty () {
  local description="Should provide class empty."
  local flag=4
  local expected="empty"

  local actual=$( get_class ${flag} )
  assert_expectation "${flag}" "${actual}" "${expected}" "${description}" "get_class"
}

function get_class_test_cases () {
  select_not_match
  select_match
  select_exact_match
  select_empty
}

# get_class_test_cases