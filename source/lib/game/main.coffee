ig.module("game.main")
  .requires("impact.game", "impact.font")
  .defines ->
    MyGame = ig.Game.extend
      # Load a font
      font: new ig.Font("media/04b03.font.png")
      init: ->

      # Initialize your game here; bind keys etc.
      update: ->

        # Update all entities and backgroundMaps
        @parent()

      # Add your own, additional update code here
      draw: ->

        # Draw all entities and backgroundMaps
        @parent()

        # Add your own drawing code here
        x = ig.system.width / 2
        y = ig.system.height / 2
        @font.draw "It Works with coffescript!", x, y, ig.Font.ALIGN.CENTER

    # Start the Game with 60fps, a resolution of 320x240, scaled
    # up by a factor of 2
    ig.main "#canvas", MyGame, 60, 320, 240, 2

