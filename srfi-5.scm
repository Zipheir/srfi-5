(module srfi-5 ()
  (import (rename scheme (let standard-let)))
  (import (chicken base))
  (import (chicken module))
  (import (chicken platform))
  (export let
          let-loop)

  (register-feature! 'srfi-5)

  (include "srfi-5-impl.scm"))
