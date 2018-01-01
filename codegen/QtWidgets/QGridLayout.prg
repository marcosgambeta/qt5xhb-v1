%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QSIZE
#endif

CLASS QGridLayout INHERIT QLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addLayout
   METHOD addWidget
   METHOD cellRect
   METHOD columnCount
   METHOD columnMinimumWidth
   METHOD columnStretch
   METHOD getItemPosition
   METHOD horizontalSpacing
   METHOD itemAtPosition
   METHOD originCorner
   METHOD rowCount
   METHOD rowMinimumHeight
   METHOD rowStretch
   METHOD setColumnMinimumWidth
   METHOD setColumnStretch
   METHOD setHorizontalSpacing
   METHOD setOriginCorner
   METHOD setRowMinimumHeight
   METHOD setRowStretch
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD spacing
   METHOD verticalSpacing
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGridLayout ( QWidget * parent )
$internalConstructor=|new1|QWidget *

$prototype=QGridLayout ()
$internalConstructor=|new2|

//[1]QGridLayout ( QWidget * parent )
//[2]QGridLayout ()

HB_FUNC_STATIC( QGRIDLAYOUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QGridLayout_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QGridLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addItem ( QLayoutItem * item, int row, int column, int rowSpan = 1, int columnSpan = 1, Qt::Alignment alignment = 0 )
$method=|void|addItem|QLayoutItem *,int,int,int=1,int=1,Qt::Alignment=0

$prototype=void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addLayout,addLayout1|QLayout *,int,int,Qt::Alignment=0

$prototype=void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addLayout,addLayout2|QLayout *,int,int,int,int,Qt::Alignment=0

//[1]void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
//[2]void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT )
{
  if( ISBETWEEN(3,4) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGridLayout_addLayout1();
  }
  else if( ISBETWEEN(5,6) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGridLayout_addLayout2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addWidget,addWidget1|QWidget *,int,int,Qt::Alignment=0

$prototype=void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addWidget,addWidget2|QWidget *,int,int,int,int,Qt::Alignment=0

//[1]void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
//[2]void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET )
{
  if( ISBETWEEN(3,4) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGridLayout_addWidget1();
  }
  else if( ISBETWEEN(5,6) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGridLayout_addWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect cellRect ( int row, int column ) const
$method=|QRect|cellRect|int,int

$prototype=int columnCount () const
$method=|int|columnCount|

$prototype=int columnMinimumWidth ( int column ) const
$method=|int|columnMinimumWidth|int

$prototype=int columnStretch ( int column ) const
$method=|int|columnStretch|int

$prototype=void getItemPosition ( int index, int * row, int * column, int * rowSpan, int * columnSpan )
$method=|void|getItemPosition|int,int *,int *,int *,int *

$prototype=int horizontalSpacing () const
$method=|int|horizontalSpacing|

$prototype=QLayoutItem * itemAtPosition ( int row, int column ) const
$method=|QLayoutItem *|itemAtPosition|int,int

$prototype=Qt::Corner originCorner () const
$method=|Qt::Corner|originCorner|

$prototype=int rowCount () const
$method=|int|rowCount|

$prototype=int rowMinimumHeight ( int row ) const
$method=|int|rowMinimumHeight|int

$prototype=int rowStretch ( int row ) const
$method=|int|rowStretch|int

$prototype=void setColumnMinimumWidth ( int column, int minSize )
$method=|void|setColumnMinimumWidth|int,int

$prototype=void setColumnStretch ( int column, int stretch )
$method=|void|setColumnStretch|int,int

$prototype=void setHorizontalSpacing ( int spacing )
$method=|void|setHorizontalSpacing|int

$prototype=void setOriginCorner ( Qt::Corner corner )
$method=|void|setOriginCorner|Qt::Corner

$prototype=void setRowMinimumHeight ( int row, int minSize )
$method=|void|setRowMinimumHeight|int,int

$prototype=void setRowStretch ( int row, int stretch )
$method=|void|setRowStretch|int,int

$prototype=void setSpacing ( int spacing )
$method=|void|setSpacing|int

$prototype=void setVerticalSpacing ( int spacing )
$method=|void|setVerticalSpacing|int

$prototype=int spacing () const
$method=|int|spacing|

$prototype=int verticalSpacing () const
$method=|int|verticalSpacing|

$prototype=virtual int count () const
$virtualMethod=|int|count|

$prototype=virtual Qt::Orientations expandingDirections () const
$virtualMethod=|Qt::Orientations|expandingDirections|

$prototype=virtual bool hasHeightForWidth () const
$virtualMethod=|bool|hasHeightForWidth|

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual void invalidate ()
$virtualMethod=|void|invalidate|

$prototype=virtual QLayoutItem * itemAt ( int index ) const
$virtualMethod=|QLayoutItem *|itemAt|int

$prototype=virtual QSize maximumSize () const
$virtualMethod=|QSize|maximumSize|

$prototype=virtual int minimumHeightForWidth ( int w ) const
$virtualMethod=|int|minimumHeightForWidth|int

$prototype=virtual QSize minimumSize () const
$virtualMethod=|QSize|minimumSize|

$prototype=virtual void setGeometry ( const QRect & rect )
$virtualMethod=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QLayoutItem * takeAt ( int index )
$virtualMethod=|QLayoutItem *|takeAt|int

#pragma ENDDUMP
