// errorcheck -0 -d=ssa/prove/debug=1

//go:build amd64

package main

//go:noinline
func bce4(a, b []int) []int {
	res := make([]int, len(a)+len(b))

	var i, j, k int
	for i < len(a) && j < len(b) {
		ai := a[i] //+
		bj := b[j] //+

		if ai < bj {
			res[k] = ai //+
			i++
		}
		k++
	}
	return res
}

func main() {
	var a, b []int
	bce4(a, b)
}
