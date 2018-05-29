%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD swap
   METHOD source
   METHOD type
   METHOD severity
   METHOD id
   METHOD message
   METHOD createApplicationMessage
   METHOD createThirdPartyMessage

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLDebugMessage()
$internalConstructor=|new1|

$prototype=QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)
$internalConstructor=|new2|const QOpenGLDebugMessage &

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLDebugMessage_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1) )
  {
    QOpenGLDebugMessage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QOpenGLDebugMessage &debugMessage)
$method=|void|swap|QOpenGLDebugMessage &

$prototype=Source source() const
$method=|QOpenGLDebugMessage::Source|source|

$prototype=Type type() const
$method=|QOpenGLDebugMessage::Type|type|

$prototype=Severity severity() const
$method=|QOpenGLDebugMessage::Severity|severity|

$prototype=GLuint id() const
$method=|GLuint|id|

$prototype=QString message() const
$method=|QString|message|

$prototype=static QOpenGLDebugMessage createApplicationMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
$staticMethod=|QOpenGLDebugMessage|createApplicationMessage|const QString &,GLuint=0,QOpenGLDebugMessage::Severity=QOpenGLDebugMessage::NotificationSeverity,QOpenGLDebugMessage::Type=QOpenGLDebugMessage::OtherType

$prototype=static QOpenGLDebugMessage createThirdPartyMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
$staticMethod=|QOpenGLDebugMessage|createThirdPartyMessage|const QString &,GLuint=0,QOpenGLDebugMessage::Severity=QOpenGLDebugMessage::NotificationSeverity,QOpenGLDebugMessage::Type=QOpenGLDebugMessage::OtherType

$extraMethods

#pragma ENDDUMP
