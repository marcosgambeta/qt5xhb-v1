$header

#include "hbclass.ch"

CLASS QOpenGLDebugLogger INHERIT QObject

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLDebugLogger(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool initialize()
*/
$method=|bool|initialize|

/*
bool isLogging() const
*/
$method=|bool|isLogging|

/*
LoggingMode loggingMode() const
*/
$method=|QOpenGLDebugLogger::LoggingMode|loggingMode|

/*
qint64 maximumMessageLength() const
*/
$method=|qint64|maximumMessageLength|

/*
void pushGroup(const QString &name,GLuint id = 0,QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource)
*/
$method=|void|pushGroup|const QString &,GLuint=0,QOpenGLDebugMessage::Source=QOpenGLDebugMessage::ApplicationSource

/*
void popGroup()
*/
$method=|void|popGroup|

/*
void logMessage(const QOpenGLDebugMessage &debugMessage)
*/
$method=|void|logMessage|const QOpenGLDebugMessage &

/*
void startLogging(LoggingMode loggingMode = AsynchronousLogging)
*/
$method=|void|startLogging|QOpenGLDebugLogger::LoggingMode=QOpenGLDebugLogger::AsynchronousLogging

/*
void stopLogging()
*/
$method=|void|stopLogging|

#pragma ENDDUMP
