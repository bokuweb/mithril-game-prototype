m   = require 'mithril'
App = require './app'

app = m.component new App(), {
    audio : "./audio/Ouroboros.mp3"
    notes : [
        {row : 0, column : 0, time : 2.329}
        {row : 1, column : 1, time : 4.521}
        {row : 2, column : 2, time : 6.759}
        {row : 3, column : 2, time : 8.982}
        {row : 3, column : 3, time : 11.269}
        {row : 1, column : 1, time : 13.500}
        {row : 2, column : 2, time : 15.731}
        {row : 2, column : 2, time : 18.002}
        {row : 0, column : 0, time : 20.242}
        {row : 1, column : 1, time : 22.448}
        {row : 2, column : 2, time : 24.753}
        {row : 2, column : 2, time : 26.960}
        {row : 0, column : 0, time : 29.180}
        {row : 1, column : 1, time : 31.455}
        {row : 2, column : 2, time : 33.730}
        {row : 2, column : 2, time : 35.899}
        {row : 0, column : 0, time : 38.170}
        {row : 1, column : 1, time : 40.377}
        {row : 2, column : 2, time : 42.665}
        {row : 2, column : 2, time : 44.886}
        {row : 3, column : 3, time : 47.127}
        {row : 1, column : 1, time : 49.354}
        {row : 2, column : 2, time : 51.654}
        {row : 2, column : 2, time : 53.825}
        {row : 0, column : 3, time : 56.081}
        {row : 1, column : 1, time : 58.306}
        {row : 2, column : 2, time : 60.544}
        {row : 2, column : 2, time : 62.781}
        {row : 1, column : 1, time : 65.039}
        {row : 2, column : 2, time : 67.278}
        {row : 2, column : 2, time : 69.498}
        {row : 3, column : 2, time : 71.773}
        {row : 1, column : 1, time : 74.010}
        {row : 2, column : 2, time : 76.216}
        {row : 2, column : 2, time : 80.793}
        {row : 0, column : 3, time : 83.015}
        {row : 1, column : 3, time : 85.224}
        {row : 2, column : 2, time : 89.752}
        {row : 2, column : 2, time : 92.022}
        {row : 2, column : 2, time : 94.294}
      ]
    }

m.mount document.body, app
