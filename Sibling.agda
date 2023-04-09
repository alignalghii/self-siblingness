module Sibling(Universe : Set)(is-parent-of : Universe → Universe → Set) where

open import Logic using (_↔_; _,_)

is-sibling-of : Universe → Universe → Set
is-sibling-of x y = ∀(p : Universe) → (is-parent-of p x ↔ is-parent-of p y)

prove-that-everyone-is-his-own-sibling : ∀(x : Universe) → is-sibling-of x x
prove-that-everyone-is-his-own-sibling x p = let trivial-inference prove-that-p-is-parent-of-x = prove-that-p-is-parent-of-x
                                             in (trivial-inference , trivial-inference)
