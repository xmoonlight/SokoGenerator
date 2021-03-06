#-------------------------------------------------
#
# Project created by QtCreator 2016-01-31T23:21:44
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = SokoGenerator
TEMPLATE = app

CONFIG += c++11
QMAKE_CFLAGS += -std=c99

SOURCES += main.cpp\
        mainwindow.cpp \
    sokogenerator.cpp \
    solvercpp/allocator.c \
    solvercpp/crs.c \
    solvercpp/deadlock_table.c \
    solvercpp/global.c \
    solvercpp/hashtable.c \
    solvercpp/level.c \
    solvercpp/level_info.c \
    solvercpp/move.c \
    solvercpp/position.c \
    solvercpp/queue.c \
    solvercpp/solution.c \
    solvercpp/solving_routine.c \
    solvercpp/solver.cpp \
    difficultyanalyser.cpp \

HEADERS  += mainwindow.h \
    sokogenerator.h \
    solvercpp/allocator.h \
    solvercpp/crs.h \
    solvercpp/deadlock_table.h \
    solvercpp/global.h \
    solvercpp/hashtable.h \
    solvercpp/level.h \
    solvercpp/level_info.h \
    solvercpp/move.h \
    solvercpp/position.h \
    solvercpp/queue.h \
    solvercpp/solution.h \
    solvercpp/solving_routine.h \
    solvercpp/solver.h \
    difficultyanalyser.h \

FORMS    += mainwindow.ui

win32: RC_ICONS = SokoGenerator.ico

RESOURCES += \
    resources.qrc


