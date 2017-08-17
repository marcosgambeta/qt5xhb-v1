$header

#include "hbclass.ch"

CLASS QTcpSocket INHERIT QAbstractSocket

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTcpSocket ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

#pragma ENDDUMP
