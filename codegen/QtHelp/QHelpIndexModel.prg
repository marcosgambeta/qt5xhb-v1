$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpIndexModel INHERIT QStringListModel

   DATA self_destruction INIT .F.

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex

   METHOD onIndexCreated
   METHOD onIndexCreationStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
void createIndex ( const QString & customFilterName )
*/
$method=|void|createIndex|const QString &

/*
QModelIndex filter ( const QString & filter, const QString & wildcard = QString() )
*/
$method=|QModelIndex|filter|const QString &,const QString &=QString()

/*
bool isCreatingIndex () const
*/
$method=|bool|isCreatingIndex|

#pragma ENDDUMP
