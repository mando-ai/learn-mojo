@register_passable("trivial")
struct MyInt:
    """A type that is implicitly convertible to `Int`."""
    var value: Int

    @always_inline("nodebug")
    fn __init__(_a: Int) -> Self:
        return Self {value: _a}

fn main():

    fn foo[x: MyInt, a: Int]() -> None:
        print("foo[x: MyInt, a: Int]()")

    fn foo[x: MyInt, y: MyInt]():
        print("foo[x: MyInt, y: MyInt]()")

    fn bar[a: Int](b: Int):
        print("bar[a: Int](b: Int)")

    fn bar[a: Int](*b: Int):
        print("bar[a: Int](*b: Int)")

    fn bar[*a: Int](b: Int):
        print("bar[*a: Int](b: Int)")

    fn parameter_overloads[a: Int, b: Int, x: MyInt]():
        # `foo[x: MyInt, a: Int]()` is called because it requires no implicit
        # conversions, whereas `foo[x: MyInt, y: MyInt]()` requires one.
        foo[x, a]()

        # `bar[a: Int](b: Int)` is called because it does not have variadic
        # arguments or parameters.
        bar[a](b)

        # `bar[*a: Int](b: Int)` is called because it has variadic parameters.
        bar[a, a, a](b)

    parameter_overloads[1, 2, MyInt(3)]()