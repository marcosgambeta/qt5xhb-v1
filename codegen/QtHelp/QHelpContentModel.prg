$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QVARIANT
REQUEST QMODELINDEX
#endif

CLASS QHelpContentModel INHERIT QAbstractItemModel

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD contentItemAt
   METHOD createContents
   METHOD isCreatingContents
   METHOD columnCount
   METHOD data
   METHOD index
   METHOD parent
   METHOD rowCount

   METHOD onContentsCreated
   METHOD onContentsCreationStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QHelpContentItem * contentItemAt ( const QModelIndex & index ) const
*/
$method=|QHelpContentItem *|contentItemAt|const QModelIndex &

/*
void createContents ( const QString & customFilterName )
*/
$method=|void|createContents|const QString &

/*
bool isCreatingContents () const
*/
$method=|bool|isCreatingContents|

/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$method=|int|columnCount|const QModelIndex &=QModelIndex()

/*
virtual QVariant data ( const QModelIndex & index, int role ) const
*/
$method=|QVariant|data|const QModelIndex &,int

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
virtual QModelIndex parent ( const QModelIndex & index ) const
*/
$method=|QModelIndex|parent|const QModelIndex &

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

#pragma ENDDUMP
