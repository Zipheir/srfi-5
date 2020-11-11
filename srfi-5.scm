(module srfi-5 ()
  (import (except scheme let))
  (import (chicken base))
  (import (chicken module))
  (import (chicken platform))
  (export let
          let-loop)

  (register-feature! 'srfi-5)

  (include "srfi-5-impl.scm"))
