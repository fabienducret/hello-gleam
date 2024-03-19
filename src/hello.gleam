import gleam/io
import gleam/result
import say_hello.{say_hello_with}

pub fn main() {
  let decorate = fn(value: String) { "---> " <> value <> " <---" }
  let say_hello = say_hello_with(decorate)

  "Fabien"
  |> say_hello
  |> result.map(print)
  |> result.map_error(handle_error)
}

fn print(value: String) {
  io.println(value)
}

fn handle_error(error: String) {
  io.debug(error)
}
