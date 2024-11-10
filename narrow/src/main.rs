mod narrow;
use crate::narrow::narrow;
use portable_pty::{NativePtySystem, PtySize, PtySystem};
fn main() {
    let pty_system = NativePtySystem::default();

    let pair = pty_system
        .openpty(PtySize {
            rows: 0,
            cols: 0,
            pixel_width: 0,
            pixel_height: 0,
        })
        .unwrap();

    let mut args = std::env::args_os().skip(1);
    //print!("{:?} ", args.next().unwrap());
    let mut args = std::env::args_os().skip(2);
    //print!("{:?} ", args.next().unwrap());

    narrow();
}
