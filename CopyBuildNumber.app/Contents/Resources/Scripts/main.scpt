JsOsaDAS1.001.00bplist00�Vscript_kapp = Application.currentApplication()
app.includeStandardAdditions = true

buildVersion = app.doShellScript("sw_vers -buildVersion | tr -d '\n'")
app.setTheClipboardTo(buildVersion)

notificationText = "Build " + buildVersion + " was copied to the clipboard"
app.displayNotification(notificationText, {	withTitle: "Build Number Copied", subtitle: buildVersion })                              � jscr  ��ޭ