JsOsaDAS1.001.00bplist00�Vscript_�SystemPreferences = Application("System Preferences");
SystemPreferences.activate();

app = Application.currentApplication();
app.includeStandardAdditions = true;

energySaver = SystemPreferences.panes.byId("com.apple.preference.energysaver");
energySaver.reveal();

SystemEvents = Application("System Events");
prefs = SystemEvents.applicationProcesses.byName("System Preferences");

checkbox = prefs.windows[0].groups[0].checkboxes[0]
status = checkbox.value();
checkbox.click();

SystemPreferences.quit();

msg = status === 0 ? "Discrete graphics disabled" : "Discrete graphics enabled";

app.displayNotification(msg, {
	withTitle: "System Preferences",
});                              �jscr  ��ޭ