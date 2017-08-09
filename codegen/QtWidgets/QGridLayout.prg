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

/*
QGridLayout ( QWidget * parent )
*/
$internalConstructor=|new1|QWidget *

/*
QGridLayout ()
*/
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

/*
void addItem ( QLayoutItem * item, int row, int column, int rowSpan = 1, int columnSpan = 1, Qt::Alignment alignment = 0 )
*/
$method=|void|addItem|QLayoutItem *,int,int,int=1,int=1,Qt::Alignment=0

/*
void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
*/
$internalMethod=|void|addLayout,addLayout1|QLayout *,int,int,Qt::Alignment=0

/*
void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
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

/*
void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
*/
$internalMethod=|void|addWidget,addWidget1|QWidget *,int,int,Qt::Alignment=0

/*
void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
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

/*
QRect cellRect ( int row, int column ) const
*/
$method=|QRect|cellRect|int,int

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
int columnMinimumWidth ( int column ) const
*/
$method=|int|columnMinimumWidth|int

/*
int columnStretch ( int column ) const
*/
$method=|int|columnStretch|int

/*
void getItemPosition ( int index, int * row, int * column, int * rowSpan, int * columnSpan )
*/
$method=|void|getItemPosition|int,int *,int *,int *,int *

/*
int horizontalSpacing () const
*/
$method=|int|horizontalSpacing|

/*
QLayoutItem * itemAtPosition ( int row, int column ) const
*/
$method=|QLayoutItem *|itemAtPosition|int,int

/*
Qt::Corner originCorner () const
*/
$method=|Qt::Corner|originCorner|

/*
int rowCount () const
*/
$method=|int|rowCount|

/*
int rowMinimumHeight ( int row ) const
*/
$method=|int|rowMinimumHeight|int

/*
int rowStretch ( int row ) const
*/
$method=|int|rowStretch|int

/*
void setColumnMinimumWidth ( int column, int minSize )
*/
$method=|void|setColumnMinimumWidth|int,int

/*
void setColumnStretch ( int column, int stretch )
*/
$method=|void|setColumnStretch|int,int

/*
void setHorizontalSpacing ( int spacing )
*/
$method=|void|setHorizontalSpacing|int

/*
void setOriginCorner ( Qt::Corner corner )
*/
$method=|void|setOriginCorner|Qt::Corner

/*
void setRowMinimumHeight ( int row, int minSize )
*/
$method=|void|setRowMinimumHeight|int,int

/*
void setRowStretch ( int row, int stretch )
*/
$method=|void|setRowStretch|int,int

/*
void setSpacing ( int spacing )
*/
$method=|void|setSpacing|int

/*
void setVerticalSpacing ( int spacing )
*/
$method=|void|setVerticalSpacing|int

/*
int spacing () const
*/
$method=|int|spacing|

/*
int verticalSpacing () const
*/
$method=|int|verticalSpacing|

/*
virtual int count () const
*/
$method=|int|count|

/*
virtual Qt::Orientations expandingDirections () const
*/
$method=|Qt::Orientations|expandingDirections|

/*
virtual bool hasHeightForWidth () const
*/
$method=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int w ) const
*/
$method=|int|heightForWidth|int

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual QLayoutItem * itemAt ( int index ) const
*/
$method=|QLayoutItem *|itemAt|int

/*
virtual QSize maximumSize () const
*/
$method=|QSize|maximumSize|

/*
virtual int minimumHeightForWidth ( int w ) const
*/
$method=|int|minimumHeightForWidth|int

/*
virtual QSize minimumSize () const
*/
$method=|QSize|minimumSize|

/*
virtual void setGeometry ( const QRect & rect )
*/
$method=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual QLayoutItem * takeAt ( int index )
*/
$method=|QLayoutItem *|takeAt|int

#pragma ENDDUMP
