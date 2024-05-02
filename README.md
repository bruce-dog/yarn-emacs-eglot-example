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
in yarn's documentation which can be adapted for eglot. You need to run
`yarn dlx @yarnpkg/sdks base` to try this yourself. I've created a sample
`.dir-locals.el` file in this repo in order to make eglot run
`typescript-language-server` through yarn.

Having run the above command, if you have already configured emacs to use eglot,
you'll observe that emacs can jump to definitions within this project just fine,
but attempting to jump to a dependency's definition results in an error. For
TypeScript dependencies, you'll still get type checking and all the nice things
that come with it.

My recommendation is to use `npm` for local development, even if you continue to
use `yarn` for everything else. Just be careful not to check in any npm-related
files. This recommendation may not work because it's possible to set up projects
that work only with yarn and not with npm.
