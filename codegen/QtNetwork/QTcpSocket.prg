$header

#include "hbclass.ch"

CLASS QTcpSocket INHERIT QAbstractSocket

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTcpSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

#pragma ENDDUMP
