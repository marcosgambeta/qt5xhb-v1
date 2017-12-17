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

$prototype=QColumnView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QList<int> columnWidths () const
$method=|QList<int>|columnWidths|

$prototype=QWidget * previewWidget () const
$method=|QWidget *|previewWidget|

$prototype=bool resizeGripsVisible () const
$method=|bool|resizeGripsVisible|

$prototype=void setColumnWidths ( const QList<int> & list )
$method=|void|setColumnWidths|const QList<int> &

$prototype=void setPreviewWidget ( QWidget * widget )
$method=|void|setPreviewWidget|QWidget *

$prototype=void setResizeGripsVisible ( bool visible )
$method=|void|setResizeGripsVisible|bool

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const
$method=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$method=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

$prototype=virtual void selectAll ()
$method=|void|selectAll|

$prototype=virtual void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$method=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
$method=|void|setSelectionModel|QItemSelectionModel *

$prototype=virtual QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$method=|QRect|visualRect|const QModelIndex &

#pragma ENDDUMP
