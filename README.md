qml-bootstrap
=============
Qml Bootstrap is a set of simple and beautiful components for qml mobile and desktop projects. It is inspired from [Ionic framework](http://ionicframework.com/) components and use [Font Awesome](http://fortawesome.github.io/Font-Awesome/) icons font.

##How to use it
Just clone the repository and create a new qml project base on this code. Then import components that your want to use. For example, to use ButtonDefault
```
import QtQuick 2.3
import QtQuick.Window 2.0
import "src/buttons"

Window {
    visible: true
    width: 640
    height: 640
    title: qsTr("Hello World !")

    Column {
        anchors.centerIn: parent
        spacing: 10
        ButtonDefault {
            design: "light"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "stable"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "positive"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "calm"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "balanced"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "energized"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "assertive"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "royal"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "dark"
            width: 100
            height: 50
        }
    }
}
```

##Qt version
Qml-bootstrap require Qt 5.3.2 or highter to work.
##Plateforms supported
You can use these components Window, Linux, Max OS Android or IOS.

#Thanks
[Ionic Framework](http://ionicframework.com/) - A hybrid mobile apps framework.

[Font Awesome](http://fortawesome.github.io/Font-Awesome/) - The iconic font and CSS toolkit.

[Qt Project](http://qt-project.org/) - True cross-platform framework.

"[Using Fonts Awesome in QML](http://kdeblog.mageprojects.com/2012/11/20/using-fonts-awesome-in-qml/)" by markg85.