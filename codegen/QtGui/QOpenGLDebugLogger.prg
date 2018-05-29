%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD initialize
   METHOD isLogging
   METHOD loggingMode
   METHOD maximumMessageLength
   METHOD pushGroup
   METHOD popGroup
   METHOD logMessage
   METHOD startLogging
   METHOD stopLogging

   METHOD onMessageLogged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLDebugLogger(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool initialize()
$method=|bool|initialize|

$prototype=bool isLogging() const
$method=|bool|isLogging|

$prototype=LoggingMode loggingMode() const
$method=|QOpenGLDebugLogger::LoggingMode|loggingMode|

$prototype=qint64 maximumMessageLength() const
$method=|qint64|maximumMessageLength|

$prototype=void pushGroup(const QString &name,GLuint id = 0,QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource)
$method=|void|pushGroup|const QString &,GLuint=0,QOpenGLDebugMessage::Source=QOpenGLDebugMessage::ApplicationSource

$prototype=void popGroup()
$method=|void|popGroup|

$prototype=void logMessage(const QOpenGLDebugMessage &debugMessage)
$method=|void|logMessage|const QOpenGLDebugMessage &

$prototype=void startLogging(LoggingMode loggingMode = AsynchronousLogging)
$method=|void|startLogging|QOpenGLDebugLogger::LoggingMode=QOpenGLDebugLogger::AsynchronousLogging

$prototype=void stopLogging()
$method=|void|stopLogging|

$beginSignals
$signal=|messageLogged(QOpenGLDebugMessage)
$endSignals

#pragma ENDDUMP
