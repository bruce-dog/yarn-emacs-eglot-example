((nil
  . ((eglot-workspace-configuration
      . (:typescript-language-server
         (:typescript.tsserver.path
          "/Users/bruce.lewis/yarn-emacs-eglot-example/.yarn/sdks/typescript/lib/tsserver.js")))))
 (typescript-mode
  ;;; lsp-mode support (deprecated)
  . ((eval . (let ((project-directory (car (dir-locals-find-file default-directory))))
                (setq lsp-clients-typescript-server-args
                      `("--tsserver-path"
                        ,(concat project-directory ".yarn/sdks/typescript/bin/tsserver")
                        "--stdio")))))))
