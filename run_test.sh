#! /bin/bash
source tests/check_letter_existence_test.sh
source tests/get_class_test.sh
source tests/capitalize_test.sh
source tests/generate_letter_html_test.sh
source tests/generate_page_test.sh

function all_test_cases() {
  echo -e "\n Check Letter Existence\n"
  check_letter_existence_test_cases

  echo -e "\n Get Class\n"
  get_class_test_cases

  echo -e "\n Capitalize\n"
  capitalize_test_cases

  echo -e "\n Generate Letter HTML\n"
  generate_letter_html_test_cases

  echo -e "\n Generate Page"
  generate_page_test_cases

}

function run_tests() {
  functions=(all check_letter_existence get_class capitalize generate_letter_html generate_page)

  PS3="select a function to test : "

  select FUNCTION in ${functions[@]}; do
    echo -e "\n\n${FUNCTION}"
    ${FUNCTION}_test_cases
    break
  done
}

run_tests
generate_report
