# Pilot-Link / J-Pilot for HomeBrew

This is build Formula for Homebrew for:

*   [pilot-link](https://github.com/desrod/pilot-link)
*   [J-Pilot](https://www.jpilot.org/)

which are tools for interacting with a Palm Pilot (eg, from the late 1990s
or early 2000s).  In particular it is built with the crypto features
enabled, so that we can use the password store integration to access
old password databases.

The current versions of `pilot-link` (0.15) and `J-Pilot` (2.1.0) are used
to simplify building on modern macOS.

This has been only very lightly tested as the only feature I still use
is accessing password databases.

The major change between J-Pilot 1.8.2 (2014) and J-Pilot 2.0.0
(2021) is the port from GTK2 to GTK+3 (GUI library).  The major
change from J-Pilot 2.0.x to J-Pilot 2.1.x is porting to modern
tooling (unfortunately done with a bunch of Claude Opus code
generation, but not exclusively; at least the original developer is
still involved).

(The Formula names deliberately match the ones used in Macports --
[`pilot-link`](https://ports.macports.org/port/pilot-link/) and
[`jpilot`](https://ports.macports.org/port/jpilot/) -- for simplicity
of conversion.  Although MacPorts currently only has the older pilot-link
and J-Pilot from before the GTK3+ conversion.)

## How do I install these formulae?

```shell
brew install naosnz/palm-pilot/pilot-link
brew install naosnz/palm-pilot/jpilot
```

Or in individual steps:

```shell
brew tap naosnz/palm-pilot
brew trust naosnz/palm-pilot
brew install pilot-link
brew install jpilot
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "naosnz/palm-pilot"
trust "naosnz/palm-pilot"
brew "pilot-link"
brew "jpilot"
```

## Licensing

[pilot-link](https://github.com/desrod/pilot-link) is
available under a [GPL v2 
license](https://github.com/desrod/pilot-link/blob/main/COPYING).

[J-Pilot](https://github.com/juddmon/jpilot/) is also available 
under a [GPL v2 license](https://github.com/juddmon/jpilot/blob/master/COPYING).

These Homebrew Formula to facilitate installing it is available under
a MIT License; see the [LICENSE](LICENSE) file for the text of the
MIT License.
