import gleam/io
import gleam/result
import say_hello.{say_hello_with}
import decorate.{default_decorate}

pub fn main() {
  let say_hello = say_hello_with(default_decorate)

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
