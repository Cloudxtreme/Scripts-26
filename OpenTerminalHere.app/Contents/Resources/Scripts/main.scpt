JsOsaDAS1.001.00bplist00�Vscript_�var finder = Application("Finder");
var events = Application("System Events");
var app = Application.currentApplication();
app.includeStandardAdditions = true;

finder.activate();
delay(0.2);
events.keystroke("c", {using: ["command down", "option down"]});

var iterm = Application("iTerm");
iterm.activate();
delay(0.2);

var window = iterm.createWindowWithDefaultProfile();
var escapedPath = app.theClipboard().replace(" ", "\\ ");
iterm.write(window.currentSession, {text: "cd " + escapedPath});                              jscr  ��ޭ