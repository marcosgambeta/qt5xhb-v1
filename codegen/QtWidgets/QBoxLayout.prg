$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QSIZE
#endif

CLASS QBoxLayout INHERIT QLayout

   METHOD new
   METHOD delete
   METHOD addLayout
   METHOD addSpacerItem
   METHOD addSpacing
   METHOD addStretch
   METHOD addStrut
   METHOD addWidget
   METHOD direction
   METHOD insertLayout
   METHOD insertSpacerItem
   METHOD insertSpacing
   METHOD insertStretch
   METHOD insertWidget
   METHOD setDirection
   METHOD setSpacing
   METHOD setStretch
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretch
   METHOD addItem
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
QBoxLayout ( Direction dir, QWidget * parent = 0 )
*/
$constructor=|new|QBoxLayout::Direction,QWidget *=0

$deleteMethod

/*
void addLayout ( QLayout * layout, int stretch = 0 )
*/
$method=|void|addLayout|QLayout *,int=0

/*
void addSpacerItem ( QSpacerItem * spacerItem )
*/
$method=|void|addSpacerItem|QSpacerItem *

/*
void addSpacing ( int size )
*/
$method=|void|addSpacing|int

/*
void addStretch ( int stretch = 0 )
*/
$method=|void|addStretch|int=0

/*
void addStrut ( int size )
*/
$method=|void|addStrut|int

/*
void addWidget ( QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
$method=|void|addWidget|QWidget *,int=0,Qt::Alignment=0

/*
Direction direction () const
*/
$method=|QBoxLayout::Direction|direction|

/*
void insertLayout ( int index, QLayout * layout, int stretch = 0 )
*/
$method=|void|insertLayout|int,QLayout *,int=0

/*
void insertSpacerItem ( int index, QSpacerItem * spacerItem )
*/
$method=|void|insertSpacerItem|int,QSpacerItem *

/*
void insertSpacing ( int index, int size )
*/
$method=|void|insertSpacing|int,int

/*
void insertStretch ( int index, int stretch = 0 )
*/
$method=|void|insertStretch|int,int=0

/*
void insertWidget ( int index, QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
$method=|void|insertWidget|int,QWidget *,int=0,Qt::Alignment=0

/*
void setDirection ( Direction direction )
*/
$method=|void|setDirection|QBoxLayout::Direction

/*
void setSpacing ( int spacing )
*/
$method=|void|setSpacing|int

/*
void setStretch ( int index, int stretch )
*/
$method=|void|setStretch|int,int

/*
bool setStretchFactor ( QWidget * widget, int stretch )
*/
$internalMethod=|bool|setStretchFactor,setStretchFactor1|QWidget *,int

/*
bool setStretchFactor ( QLayout * layout, int stretch )
*/
$internalMethod=|bool|setStretchFactor,setStretchFactor2|QLayout *,int

//[1]bool setStretchFactor ( QWidget * widget, int stretch )
//[2]bool setStretchFactor ( QLayout * layout, int stretch )

HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCHFACTOR )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QBoxLayout_setStretchFactor1();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QBoxLayout_setStretchFactor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int spacing () const
*/
$method=|int|spacing|

/*
int stretch ( int index ) const
*/
$method=|int|stretch|int

/*
virtual void addItem ( QLayoutItem * item )
*/
$method=|void|addItem|QLayoutItem *

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
virtual void setGeometry ( const QRect & r )
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
