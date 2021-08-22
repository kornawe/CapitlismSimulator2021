QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Model/Banking/Bank.cpp \
    Model/Banking/PlayerAccount.cpp \
    Model/Banking/Transaction.cpp \
    Model/Board/NormalBoard.cpp \
    Model/Chance/Die.cpp \
    Model/Location/Jail.cpp \
    Model/main.cpp

HEADERS += \
    Model/Banking/Bank.h \
    Model/Banking/IAccount.h \
    Model/Banking/IAmount.h \
    Model/Banking/IBank.h \
    Model/Banking/ITransaction.h \
    Model/Banking/PlayerAccount.h \
    Model/Banking/Transaction.h \
    Model/Board/IBoard.h \
    Model/Board/NormalBoard.h \
    Model/Chance/Die.h \
    Model/Chance/IDice.h \
    Model/Chance/IDie.h \
    Model/Command/ICommand.h \
    Model/IMovement.h \
    Model/IPlayer.h \
    Model/Location/ILocation.h \
    Model/Location/IProperty.h \
    Model/Location/IUtility.h \
    Model/Location/Jail.h

FORMS +=

TRANSLATIONS += \
    CapitalismSimulator2022_en_US.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
