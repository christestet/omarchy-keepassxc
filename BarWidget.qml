import QtQuick
import qs.Ui

BarWidget {
  id: root
  moduleName: "christestet.keepassxc"

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  WidgetButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: ""
    fontFamily: "Symbols Nerd Font Mono"
    horizontalMargin: 7.5
    tooltipText: "KeePassXC"
    onPressed: function(button) {
      root.bar.run("$HOME/.config/omarchy/plugins/christestet.keepassxc/launch-keepassxc")
    }
  }
}
