$header

#include "hbclass.ch"

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
*/
$method=|void|message|QtMsgType,const QString &,const QUrl &=QUrl(),const QSourceLocation &=QSourceLocation()

#pragma ENDDUMP
