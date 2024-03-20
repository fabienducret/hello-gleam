type Decorate =
  fn(String) -> String

pub fn say_hello_with(
  decorate: Decorate,
) -> fn(String) -> Result(String, String) {
  fn(name: String) {
    case name {
      "" -> Error("Name is missing")
      _ -> {
        let hello = "Hello, " <> name
        Ok(decorate(hello))
      }
    }
  }
}
