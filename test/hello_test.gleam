import gleeunit
import gleeunit/should
import say_hello.{say_hello_with}

pub fn main() {
  gleeunit.main()
}

pub fn say_hello_with_success_test() {
  let decorate = fn(value: String) { "---> " <> value <> " <---" }
  let say_hello = say_hello_with(decorate)

  "Fabien"
  |> say_hello
  |> should.equal(Ok("---> Hello, Fabien <---"))
}

pub fn say_hello_with_error_test() {
  let decorate = fn(value: String) { value }
  let say_hello = say_hello_with(decorate)

  ""
  |> say_hello
  |> should.equal(Error("Name is missing"))
}
