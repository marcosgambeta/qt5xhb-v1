%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

$prototype=virtual void selectAll ()
$virtualMethod=|void|selectAll|

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

$beginSignals
$signal=|updatePreviewWidget(QModelIndex)
$endSignals

#pragma ENDDUMP
