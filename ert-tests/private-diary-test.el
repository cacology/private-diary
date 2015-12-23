;;;
;;; this is a stub to go with a .travis.yml example
;;;

(require 'private-diary)

;;; interactive

(ert-deftest interactive-test-01 nil
  "This test should not run on Travis"
  :tags '(:interactive)
  (should t))

;;; noninteractive

(ert-deftest has-feature-compiles nil
  "This test should run on Travis. Checks to make sure the elisp compiles."
  (should (featurep 'private-diary)))

;;
;; Emacs
;;
;; Local Variables:
;; indent-tabs-mode: nil
;; coding: utf-8
;; End:
;;

;;; my-library-test.el ends here
