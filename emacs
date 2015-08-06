;;; Great Practical Ideas for Computer Scientists
;;; Sample .emacs file
;;; author: Michael "rntz" Arntzenius (daekharel@gmail.com, marntzen@andrew.cmu.edu)

;; Turns on syntax highlighting for all files for which emacs knows how to
;; highlight.
(global-font-lock-mode t)

;; Makes the space between the "mark" and the "point" be highlighted -
;; essentially, emacs' notion of the "currently selected text". This is
;; probably what you expect if you're coming from another text editor.
(transient-mark-mode t)

;; Removes trailing whitespace from your lines before saving
;; files. Trailing whitespace is the devil.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Makes sure your files end in a newline before saving them. Terminating
;; newlines are a Good Idea.
(setq require-final-newline t)

;; Make lines only start at an explicit wrap
(setq line-move-visual 'nil)


;;; A sane C style.
(defconst rntz-c-style
  '((c-basic-offset . 4)
    (c-comment-only-line-offset . 0)
    (c-doc-comment-style . javadoc)
    (c-hanging-braces-alist
      (defun-open before after)
      (defun-close before after)
      (class-open after)
      (class-close before)
      (substatement-open after)
      (substatement-close before after)
      (block-open after)
      (block-close before after))
     (c-block-comment-prefix . "*")
     (c-offsets-alist
       (innamespace . 0)
       (topmost-intro . 0)
       (substatement-open . 0)
       (defun-block-intro . +)
       (label . 2)
       (case-label . 2)
       (access-label . -2)
       (statement-block-intro . +)
       (statement-case-intro . 2))))

(c-add-style "rntz" rntz-c-style)
(setq c-default-style "rntz")


;;; The 122 C0 mode code
;;; Setup for c0-mode
(setq c0-root "/afs/andrew.cmu.edu/course/15/122/")
(load (concat c0-root "c0-mode/c0.el"))


;;; The 150 SML mode code
;; this points to AFS
(add-to-list 'load-path
             "/afs/andrew.cmu.edu/course/15/150/bin/elisp/sml-mode")
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)

;; this points to where SML happens to live on unix.andrew.cmu.edu
(setq sml-program-name "/usr/local/bin/sml")

(add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\)\\'" . sml-mode))

(defun my-sml-mode-hook () "Local defaults for SML mode"
  (setq sml-indent-level 2)             ; conserve on horizontal space
  (setq words-include-escape t)         ; \ loses word break status
  (setq indent-tabs-mode nil))          ; never ever indent with tabs
(add-hook 'sml-mode-hook 'my-sml-mode-hook)

;; General non-SML-specific settings that are appropriate follow - feel
;; free to comment these out if you don't like them.
