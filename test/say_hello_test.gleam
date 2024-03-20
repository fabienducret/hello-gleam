import gleeunit/should
import say_hello.{say_hello_with}

pub fn say_hello_with_success_test() {
  let say_hello = say_hello_with(stub_decorate)

  "Fabien"
  |> say_hello
  |> should.equal(Ok("---> Hello, Fabien"))
}

pub fn say_hello_with_error_test() {
  let say_hello = say_hello_with(stub_decorate)

  ""
  |> say_hello
  |> should.equal(Error("Name is missing"))
}

fn stub_decorate(value: String) {
  "---> " <> value
}
