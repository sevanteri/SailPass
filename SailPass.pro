# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = SailPass

CONFIG += sailfishapp

SOURCES += src/SailPass.cpp \
    src/passlauncher.cpp

OTHER_FILES += qml/SailPass.qml \
    qml/cover/CoverPage.qml \
    rpm/SailPass.changes.in \
    rpm/SailPass.spec \
    rpm/SailPass.yaml \
    translations/*.ts \
    SailPass.desktop \
    qml/pages/PassList.qml

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/SailPass-de.ts

HEADERS += \
    src/passlauncher.h

