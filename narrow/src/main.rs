mod narrow;
use portable_pty::PtySize;
use portable_pty::NativePtySystem;
use portable_pty::PtySystem;
use crate::narrow::narrow;
fn main() {

    let pty_system = NativePtySystem::default();

    let pair = pty_system
        .openpty(PtySize {
            rows: 24,
            cols: 80,
            pixel_width: 0,
            pixel_height: 0,
        })
        .unwrap();

    let mut args = std::env::args_os().skip(1);
    print!("{:?} ", args.next().unwrap());
    let mut args = std::env::args_os().skip(2);
    print!("{:?} ", args.next().unwrap());

    narrow();
}
