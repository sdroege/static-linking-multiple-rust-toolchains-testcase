#[no_mangle]
pub fn add_b(left: usize, right: usize) -> usize {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add_b(2, 2);
        assert_eq!(result, 4);
    }
}
