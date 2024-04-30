# Incompatibility between yarn and emacs eglot

This project was bootstrapped with
[Create React App](https://github.com/facebook/create-react-app):

```bash
yarn create react-app yarn-emacs-eglot-example --template typescript
```

This is a toy repository for examining the incompatibility between
[yarn](https://yarnpkg.com/) and
[eglot](https://www.gnu.org/software/emacs/manual/html_node/eglot/).

There are
[outdated lsp-mode instructions](https://yarnpkg.com/getting-started/editor-sdks#emacs)
in yarn's documentation. You need to run `yarn dlx @yarnpkg/sdks base` to try
this yourself, but I've already created the equivalent `.dir-locals.el` file in
this repo for
[project-specific eglot configuration](https://www.gnu.org/software/emacs/manual/html_node/eglot/Project_002dspecific-configuration.html).
If you run the aforementioned command and have already configured emacs to use
typescript-language-server, you'll observe that emacs can jump to definitions
within this project just fine, but attempting to jump to a dependency's
definition results in an error. For TypeScript dependencies, you'll still get
type checking and all the nice things that come with it.

My recommendation is to use `npm` for local development, even if you continue to
use `yarn` for everything else. Just be careful not to check in any npm-related
files. 
