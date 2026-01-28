# Vectors and dot products

A vector is an ordered sequence of values:

$$\begin{aligned}
\vec{v} = [ v_1, v_2, \cdots v_n ] \\
\end{aligned}$$

## Videos

See these Khan academy videos for nice introductions to vector dot
products:

-   [mathematical properties of dot
    products](https://www.khanacademy.org/math/linear-algebra/vectors_and_spaces/dot_cross_products/v/vector-dot-product-and-vector-length),
-   [vector
    length](https://www.khanacademy.org/math/linear-algebra/vectors_and_spaces/dot_cross_products/v/vector-dot-product-and-vector-length),
-   [unit
    vectors](https://www.khanacademy.org/math/linear-algebra/matrix_transformations/lin_trans_examples/v/unit-vectors)

## Vector scaling

A vector can be *scaled* by a scalar $c$:

$$c \vec{v} \triangleq [ c v_1, c v_2, \cdots c v_n ]$$

## Vector addition

Say we have two vectors containing $n$ values:

$$\begin{aligned}
\vec{v} = [ v_1, v_2, \cdots v_n ] \\
\vec{w} = [ w_1, w_2, \cdots w_n ]
\end{aligned}$$

Vector *addition* gives a new vector with $n$ values:

$$\vec{v} + \vec{w} \triangleq [ v_1 + w_1, v_2 + w_2, \cdots v_n + w_n ]$$

Vector addition is commutative because $v_i + w_i = w_i + v_i$:

$$\vec{v} + \vec{w} = \vec{w} + \vec{v}$$

## Vector dot product

The vector *dot product* is:

$$\vec{v} \cdot \vec{w} \triangleq \Sigma_{i=1}^n v_i w_i$$

## Vector length

We write the *length* of a vector $vec{v}$ as $\| \vec{v} \|$:

$$
\| \vec{v} \| \triangleq \sqrt{ \Sigma v_i^2 }
$$

This is a generalization of Pythagoras\' theorem to $n$ dimensions.
For example, the length of a two dimensional vector $[ x, y ]$ is
the length of the hypotenuse of the right-angle triangle formed by the
points $(x, 0), (0, y), (x, y)$. This length is $\sqrt{x^2 + y^2}$.
For a point in three dimensions ${x, y, z}$, consider the right-angle
triangle formed by $(x, y, 0), (0, 0, z), (x, y, z)$. The hypotenuse
is length $\sqrt{L{ [ x, y ] }^2 + z^2} = \sqrt{ x^2 + y^2 + z^2
}$.

From the definition of vector length and the dot product, the square
root of the dot product of the vector with itself gives the vector
length:

$$\\| \vec{v} \| = \sqrt{ \vec{v} \cdot \vec{v} }$$

## Properties of dot products {#dot-product-properties}

We will use the results from [some algebra of summation](algebra_of_sums).

### Commutative

$$\vec{v} \cdot \vec{w} = \vec{w} \cdot \vec{v}$$

because $v_i w_i = w_i v_i$.

### Distributive over vector addition

$$\vec{v} \cdot (\vec{w} + \vec{x}) = \vec{v} \cdot \vec{w} + \vec{v} \cdot
\vec{x}$$

because:

$$\begin{aligned}
\vec{v} \cdot (\vec{w} + \vec{x}) = \\
\Sigma{ v_i ( w_i + x_i) } = \\
\Sigma{ (v_i + w_i) } + \Sigma{ (v_i + x_i) } = \\
\vec{v} \cdot \vec{w} + \vec{v} \cdot \vec{x}
\end{aligned}$$

### Scalar multiplication

Say we have two scalars, $c$ and $d$:

$$(c \vec{v}) \cdot (d \vec{w}) = c d ( \vec{v} \cdot \vec{w} )$$

because:

$$\begin{aligned}
(c \vec{v}) \cdot (d \vec{w}) = \\
\Sigma{ c v_i d w_i } = \\
c d \Sigma{ v_i w_i }
\end{aligned}$$

From the properties of distribution over addition and scalar
multiplication:

$$\vec{v} \cdot (c \vec{w} + \vec{x}) = c (\vec{v} \cdot \vec{w}) + (\vec{v}
\cdot \vec{x})$$

See: [properties of dot
products](https://en.wikipedia.org/wiki/Dot_product#Properties).

## Unit vector

A unit vector is any vector with length 1.

To make a corresponding unit vector from any vector $vec{v}$, divide
by $\| \vec{v} \|$:

$$\vec{u} = \frac{1}{ \| \vec{v} \| } \vec{v}$$

Let $g \triangleq frac{1}{\| \vec{v} \|}$. Then:

$$\begin{aligned}
\| g \vec{v} \|^2 = \\
( g \vec{v} ) \cdot ( g \vec{v} ) = \\
g^2  \\| \vec{v} \|^2 = 1
\end{aligned}$$

## If two vectors are perpendicular, their dot product is 0

I based this proof on that in [Gilbert Strang's "Introduction to Linear
Algebra"](https://math.mit.edu/~gs/linearalgebra/ila5/indexila5.html) 4th
edition, page 14.

Consider the triangle formed by the two vectors $\vec{v}$ and
$\vec{w}$. The lengths of the sides of the triangle are $\| \vec{v} \|, \|
\vec{w} \|, \| \vec{v} - \vec{w} \|$. When $\vec{v}$ and $\vec{w}$ are
perpendicular, this is a right-angled triangle with hypotenuse length $\| \vec{v}
- \vec{w} \|$. In this situation, by Pythagoras:

$$\\| \vec{v} \|^2 + \\| \vec{w} \|^2 = \| \vec{v} - \vec{w} \|^2$$

Write the left hand side as:

$$\\| \vec{v} \|^2 + \\| \vec{w} \|^2 =
v_1^2 + v_2^2 + \cdots v_n^2 +
w_1^2 + w_2^2 + \cdots w_n^2$$

Write the right hand side as:

$$
\| \vec{v} - \vec{w} \|^2 =
(v_1^2 - 2v_1 w_1 + w_1^2) +
(v_2^2 - 2v_2 w_2 + w_2^2) +
\cdots
(v_n^2 - 2v_n w_1 + w_n^2)
$$

The $v_i^2$ and $w_i^2$ terms on left and right cancel, so:

$$\begin{aligned}
\\| \vec{v} \|^2 + \\| \vec{w} \|^2 = \| \vec{v} - \vec{w} \|^2 \implies \\
0 = 2(v_1 w_1 + v_2 w_2 + \cdots v_n w_n) \implies \\
0 = \vec{v} \cdot \vec{w}
\end{aligned}$$

By the [converse of Pythagoras\'
theorem](https://en.wikipedia.org/wiki/Pythagorean_theorem#Converse), if $\|
\vec{v} \|^2 + \| \vec{w} \|^2 \ne \| \vec{v} - \vec{w} \|^2$ then vectors
$`vec{v}$ and $\vec{w}$ do not form a right angle and are not perpendicular.

## Also see

* [Vector projection](vector_projection)
