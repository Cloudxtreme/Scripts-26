JsOsaDAS1.001.00bplist00�Vscript_var apps = ["Safari", "iTerm", "iTunes", "Lyrical", 
			"Mail", "Messages", "Reeder", "Tweetbot",
			"Activity Monitor", "Sip", "Get Lyrical"
			];

for (var i = 0; i < apps.length; i++) {
	app = Application(apps[i]);
	if (!app.running()) {
		Application(apps[i]).activate();
	}
}                              .jscr  ��ޭ