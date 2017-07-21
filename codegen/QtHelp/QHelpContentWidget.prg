$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpContentWidget INHERIT QTreeView

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD indexOf

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QModelIndex indexOf ( const QUrl & link )
*/
$method=|QModelIndex|indexOf|const QUrl &

#pragma ENDDUMP
