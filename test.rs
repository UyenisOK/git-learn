use kernel::prelude::*;

module! {
    type: RustHelloWorld,
    name: "rust_hello_world",
    author: "Your Name",
    description: "My first Rust kernel module",
    license: "GPL",
}

struct RustHelloWorld;

impl kernel::Module for RustHelloWorld {
    fn init(_module: &'static InternalModule) -> Result<Self> {
        pr_info!("Chào bạn! Module Rust đã được tải thành công\n");
        Ok(RustHelloWorld)
    }
}

impl Drop for RustHelloWorld {
    fn drop(&mut self) {
        pr_info!("Tạm biệt! Module Rust đã bị gỡ bỏ\n");
    }
}