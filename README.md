[![GitHub stars][github stars]][1]
 [![Donate!][donate github]][5]
 [![Donate!][donate paypal]][6]

# Flake Lock Update Workflow

## Description

This repository provide a Github Workflow file ready to use to make sure that the `flake.lock`
file in your repository stay up-to-date by creating a pull-request every time it detected
some changes.

Read more information about this feature [on Github][50].

## Usage

Create an action file in `.github/workflows/` with:

```yaml
name: 'Update flake lock file'

on:
  schedule:
    - cron: '0 6 * * *'

jobs:
  createPullRequest:
    uses: loophp/flake-lock-update-workflow/.github/workflows/upgrade-flakes.yaml@v1.0.0
```

And it's done!

## Contributing

Feel free to contribute by sending Github pull requests. I'm quite responsive :-)

If you can't contribute to the code, you can also sponsor me on [Github][5] or
[Paypal][6].

## Changelog

See [CHANGELOG.md][43] for a changelog based on [git commits][44].

For more detailed changelogs, please check [the release changelogs][45].

[1]: https://packagist.org/packages/loophp/flake-lock-update-workflow
[latest stable version]: https://img.shields.io/packagist/v/loophp/flake-lock-update-workflow.svg?style=flat-square
[github stars]: https://img.shields.io/github/stars/loophp/flake-lock-update-workflow.svg?style=flat-square
[total downloads]: https://img.shields.io/packagist/dt/loophp/flake-lock-update-workflow.svg?style=flat-square
[github workflow status]: https://img.shields.io/github/workflow/status/loophp/flake-lock-update-workflow/Unit%20tests?style=flat-square
[code quality]: https://img.shields.io/scrutinizer/quality/g/loophp/flake-lock-update-workflow/master.svg?style=flat-square
[3]: https://scrutinizer-ci.com/g/loophp/flake-lock-update-workflow/?branch=master
[type coverage]: https://img.shields.io/badge/dynamic/json?style=flat-square&color=color&label=Type%20coverage&query=message&url=https%3A%2F%2Fshepherd.dev%2Fgithub%2Floophp%2Fcollection%2Fcoverage
[4]: https://shepherd.dev/github/loophp/flake-lock-update-workflow
[code coverage]: https://img.shields.io/scrutinizer/coverage/g/loophp/flake-lock-update-workflow/master.svg?style=flat-square
[license]: https://img.shields.io/packagist/l/loophp/flake-lock-update-workflow.svg?style=flat-square
[donate github]: https://img.shields.io/badge/Sponsor-Github-brightgreen.svg?style=flat-square
[donate paypal]: https://img.shields.io/badge/Sponsor-Paypal-brightgreen.svg?style=flat-square
[34]: https://github.com/loophp/flake-lock-update-workflow/issues
[2]: https://github.com/loophp/flake-lock-update-workflow/actions
[35]: http://www.phpspec.net/
[36]: https://github.com/phpro/grumphp
[37]: https://github.com/infection/infection
[38]: https://github.com/phpstan/phpstan
[39]: https://github.com/vimeo/psalm
[5]: https://github.com/sponsors/loophp
[6]: https://www.paypal.me/loophp
[43]: https://github.com/loophp/flake-lock-update-workflow/blob/master/CHANGELOG.md
[44]: https://github.com/loophp/flake-lock-update-workflow/commits/master
[45]: https://github.com/loophp/flake-lock-update-workflow/releases
[46]: https://nixos.org/guides/nix-pills/developing-with-nix-shell.html
[47]: https://github.com/jtojnar
[48]: https://github.com/fossar/nix-phps
[50]: https://docs.github.com/en/actions/learn-github-actions/reusing-workflows