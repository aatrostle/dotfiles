// NOTE Monitors
// var cinemaDisplay  = "2560x1440";
// var retinaDisplay = "2880x1800";

// NOTE defaults
// slate.default(2, twoMonitorLayout)
// slate.default(1, oneMonitorLayout)

// NOTE operations
// var lapFull = slate.operation("move", {
//   "screen" : retinaDisplay,
//   "x" : "screenOriginX",
//   "y" : "screenOriginY",
//   "width" : "screenSizeX",
//   "height" : "screenSizeY"
// });

// NOTE common layout hashes
// var lapFullHash = {
//   "operations": [lapFull],
//   "ignore-fail": true,
//   "repeat": true
// }

// NOTE one monitor layout
// var oneMonitorLayout = slate.layout("oneMonitor", {
//   "Google Chrome": lapFullHash
// });

// var oneMonitor = S.op("layout", { "name" : oneMonitorLayout });
// oneMonitor.run()

// 1440, 896

var corner = slate.operation("corner", {
  "direction": "bottom-right",
  "width": 478,
  "height": 340,
});

var pushRight = slate.operation("push", {
  "direction": "right",
  "style": "bar-resize:screenSizeX*0.75",
})

var pushDoubleRight = slate.operation("push", {
  "direction": "right",
  "style": "bar-resize:screenSizeX*0.5",
})

var pushLeft = slate.operation("push", {
  "direction": "left",
  "style": "bar-resize:screenSizeX*0.75",
});

var visor = slate.operation("move", {
  "x": "screenOriginX",
  "y": "screenOriginY",
  "width": "screenSizeX",
  "height": "screenSizeY*0.75",
})

var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY",
});

slate.bindAll({
  "up:e,cmd": visor,
  "down:e,cmd": fullscreen,
  "right:e,cmd": pushRight,
  "right:e,cmd,shift": pushDoubleRight,
  "left:e,cmd": pushLeft,
  "space:e,cmd": corner,
})
