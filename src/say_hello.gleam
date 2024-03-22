type Decorate =
  fn(String) -> String

pub fn say_hello_with(
  decorate: Decorate,
) -> fn(String) -> Result(String, String) {
  fn(name: String) {
    case is_missing(name) {
      True -> Error("Name is missing")
      False -> Ok(decorate("Hello, " <> name))
    }
  }
}

fn is_missing(value: String) -> Bool {
  value == ""
}
