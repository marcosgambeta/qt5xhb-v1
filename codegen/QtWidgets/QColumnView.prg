$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QRECT
#endif

CLASS QColumnView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD columnWidths
   METHOD previewWidget
   METHOD resizeGripsVisible
   METHOD setColumnWidths
   METHOD setPreviewWidget
   METHOD setResizeGripsVisible
   METHOD indexAt
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD sizeHint
   METHOD visualRect

   METHOD onUpdatePreviewWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QColumnView ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QList<int> columnWidths () const
*/
$method=|QList<int>|columnWidths|

/*
QWidget * previewWidget () const
*/
$method=|QWidget *|previewWidget|

/*
bool resizeGripsVisible () const
*/
$method=|bool|resizeGripsVisible|

/*
void setColumnWidths ( const QList<int> & list )
*/
$method=|void|setColumnWidths|const QList<int> &

/*
void setPreviewWidget ( QWidget * widget )
*/
$method=|void|setPreviewWidget|QWidget *

/*
void setResizeGripsVisible ( bool visible )
*/
$method=|void|setResizeGripsVisible|bool

/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
$method=|QModelIndex|indexAt|const QPoint &

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

/*
virtual void selectAll ()
*/
$method=|void|selectAll|

/*
virtual void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
*/
$method=|void|setSelectionModel|QItemSelectionModel *

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
$method=|QRect|visualRect|const QModelIndex &

#pragma ENDDUMP
