Foundation = require 'art-foundation'
{HotStyleProps} = require 'art-react'

{createHotWithPostCreate, merge} = Foundation

module.exports = createHotWithPostCreate module, class StyleProps extends HotStyleProps

  @palette:
    primaryBackground:      "#00bcd4"
    lightPrimaryBackground: "#c7ebf0"
    grayBackground:         "#eee"
    text:
      white: primary: "#fffe"
      black: primary: "#000e"

  @mediumText:
    color: @palette.text.black.primary
    fontFamily: "sans-serif"
    fontSize: 16

  @titleText: merge @mediumText,
    color: @palette.text.white.primary