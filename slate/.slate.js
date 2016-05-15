// Create Operations
var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:(screenSizeX/3)*2"
});
var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:(screenSizeX/3)*2"
});
var visor = slate.operation("move", {
  "x": "screenOriginX",
  "y": "screenOriginY",
  "width": "screenSizeX",
  "height": "screenSizeY*0.75"
})
var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

S.bind("right:e,cmd", function(win) {
    win.doOperation(pushRight);
})

S.bind("left:e,cmd", function(win) {
    win.doOperation(pushLeft);
})

S.bind("up:e,cmd", function(win) {
    win.doOperation(visor);
})

S.bind("down:e,cmd", function(win) {
    win.doOperation(fullscreen);
})
