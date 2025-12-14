  project_root="$(cd "$(dirname "$BATS_TEST_FILENAME")/.." && pwd)"

@test "HelloWorld Script" {
  result="$(bash "$project_root/tunefetch")"
  [ "$result" = "Hello, world!" ]
}