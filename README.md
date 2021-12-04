[![GitHub stars][github stars]][1]
 [![Donate!][donate github]][5]

# Flake Lock Update Workflow

## Description

This repository provide a Github Workflow file ready to use to make sure that the `flake.lock`
file in your repository stay up-to-date by creating a pull-request every time it detected
some changes.

Read more information about this feature [on Github][50].

## Usage

You can choose to use the latest release or the latest commit from the `main` branch.

I would personally suggest to use the latest commit from `main` branch as such:

Create an action file in `.github/workflows/` with:

```yaml
name: 'Update flake lock file'

on:
  schedule:
    - cron: '0 6 * * *'

jobs:
  createPullRequest:
    uses: loophp/flake-lock-update-workflow/.github/workflows/upgrade-flakes.yaml@main
```

If you want to switch to a particular release, replace `main` with the release tag that you want as such:

```yaml
name: 'Update flake lock file'

on:
  schedule:
    - cron: '0 6 * * *'

jobs:
  createPullRequest:
    uses: loophp/flake-lock-update-workflow/.github/workflows/upgrade-flakes.yaml@1.0.1
```

And it's done!

## Contributing

Feel free to contribute by sending Github pull requests. I'm quite responsive :-)

If you can't contribute to the code, you can also sponsor me on [Github][5].

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
[5]: https://github.com/sponsors/drupol
[43]: https://github.com/loophp/flake-lock-update-workflow/blob/master/CHANGELOG.md
[44]: https://github.com/loophp/flake-lock-update-workflow/commits/master
[45]: https://github.com/loophp/flake-lock-update-workflow/releases
[46]: https://nixos.org/guides/nix-pills/developing-with-nix-shell.html
[47]: https://github.com/jtojnar
[48]: https://github.com/fossar/nix-phps
[50]: https://docs.github.com/en/actions/learn-github-actions/reusing-workflows
