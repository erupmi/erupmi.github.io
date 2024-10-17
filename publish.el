(require 'ox-publish)

(setq org-html-validation-link nil
      org-publish-project-alist
      '(("home"
           :base-directory "."
           :base-extension "org"
           :publishing-directory "."
           :recursive nil
           :html-head nil
           :publishing-function org-html-publish-to-html
           :headline-levels 4
           :html-extension "html"
           :html-preamble nil
           :html-postamble nil
           :html-doctype "html5"
           :html-html5-fancy t
           :html-head-include-default-style nil
           :html-head-include-scripts nil
           ;; sitemap
           :auto-sitemap t
           :sitemap-title "Sitemap"
           :section-numbers nil
           :with-toc nil
           :with-title t
           :with-date nil
           :makeindex nil)

        ("posts"
         :base-directory "posts/"
         :base-extension "org"
         :publishing-directory "p/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :html-extension "html"
         :html-preamble nil
         :html-postamble nil
         :html-doctype "html5"
         :html-html5-fancy t
         :html-head-include-default-style t
         :html-head-include-scripts nil
         :html-link-home "/"
         :auto-sitemap t
         :sitemap-title "Erika Xie's Blog"
         :sitemap-filename "index.org"
         :sitemap-style list
         :with-creator nil
         :html-validation-link nil
         :with-author nil)
	 ("all" :components ("home" "posts"))))
