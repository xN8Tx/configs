"use strict";
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.
module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: "stable",
    // default font size in pixels for all tabs
    fontSize: 20,
    // font family with optional fallbacks
    fontFamily: "JetBrainsMono Nerd Font Propo",
    // default font weight: 'normal' or 'bold'
    fontWeight: "normal",
    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: "medium",
    // line height as a relative unit
    lineHeight: 1,
    // letter spacing as a relative unit
    letterSpacing: 0,

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: "UNDERLINE",
    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: true,

    // custom CSS to embed in the main window
    css: "",
    // custom CSS to embed in the terminal window
    termCSS: "",
    // set custom startup directory (must be an absolute path)
    workingDirectory: "",
    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: "12px 14px",
    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ["--login"],
    // for environment variables
    env: {},
    // Supported Options:
    //  1. 'SOUND' -> Enables the bell as a sound
    //  2. false: turns off the bell
    bell: "SOUND",
    // An absolute file path to a sound file on the machine.
    // bellSoundURL: '/path/to/sound/file',
    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,
    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,
    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    quickEdit: false,
    // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
    // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
    // (inside tmux or vim with mouse mode enabled for example).
    macOptionSelectionMode: "vertical",
    // Whether to use the WebGL renderer. Set it to false to use canvas-based
    // rendering (slower, but supports transparent backgrounds)
    //webGLRenderer: true,
    webGLRenderer: false,
    // keypress required for weblink activation: [ctrl|alt|meta|shift]
    // todo: does not pick up config changes automatically, need to restart terminal :/
    webLinksActivationKey: "",
    // if `false` (without backticks and without quotes), Hyper will use ligatures provided by some fonts
    disableLigatures: true,
    // set to true to disable auto updates
    disableAutoUpdates: false,
    // set to true to enable screen reading apps (like NVDA) to read the contents of the terminal
    screenReaderMode: false,
    // set to true to preserve working directory when creating splits or tabs
    preserveCWD: true,
    // for advanced config flags please refer to https://hyper.is/#cfg

    /*
     *
     * COLORS
     *
     * */
    backgroundColor: "#24273a",
    foregroundColor: "#cad3f5",
    selectionColor: "#5b6078",
    cursorColor: "#f4dbd6",
    cursorAccentColor: "#181926",
    colors: {
      black: "#494d64",
      blue: "#8aadf4",
      red: "#ed8796",
      green: "#a6da95",
      yellow: "#eed49f",
      magenta: "#f5bde6",
      cyan: "#8bd5ca8bd5ca",
      white: "#b8c0e0",
      lightBlack: "#5b6078",
      lightWhite: "#a5adcb",
      lightBlue: "#8aadf4",
      lightRed: "#ed8796",
      lightGreen: "#a6da95",
      lightYellow: "#eed49f",
      lightMagenta: "#f5bde6",
      lightCyan: "#8bd5ca",
    },
    hyperline: {
      plugins: ["cpu", "memory"],
    },
    activeTab: "💻",
  },
  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: ["hypercwd", "hyperline", "hyperterm-paste", "hyperlinks"],
  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],
  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
//# sourceMappingURL=config-default.js.map
