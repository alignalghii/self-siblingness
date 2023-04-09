module Logic where

data Product : Set → Set → Set where
    _,_ : ∀{A B : Set}(a : A)(b : B) → Product A B


_↔_ : Set → Set → Set
A ↔ B = Product (A → B) (B → A)
