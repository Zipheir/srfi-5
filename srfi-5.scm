(module srfi-5 (let)
  (import (rename (scheme base) (let standard-let))
          (chicken platform))

  (register-feature! 'srfi-5)

  (include "srfi-5-impl.scm")
  )
