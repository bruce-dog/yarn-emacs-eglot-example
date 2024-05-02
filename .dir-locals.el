((nil
  . ((eval
      .
      (add-to-list
       'eglot-server-programs
       `((js-mode js-ts-mode tsx-ts-mode typescript-mode typescript-ts-mode) .
         ,(eglot-alternatives
           '(("yarn" "typescript-language-server" "--stdio")))))))))
