(module srfi-5 (let)
  (import (rename scheme (let standard-let))
          (chicken base)
          (chicken platform))

  (register-feature! 'srfi-5)

  (include "srfi-5-impl.scm")
  )
