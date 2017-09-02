$header

#include "hbclass.ch"

CLASS QWebChannelAbstractTransport INHERIT QObject

   METHOD new
   METHOD delete
   METHOD sendMessage

   METHOD onMessageReceived

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QWebChannelAbstractTransport(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
virtual void sendMessage(const QJsonObject &message) = 0
*/
$virtualMethod=5,4,0|void|sendMessage|const QJsonObject &

#pragma ENDDUMP
