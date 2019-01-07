%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBoxLayout ( Direction dir, QWidget * parent = 0 )
$constructor=|new|QBoxLayout::Direction,QWidget *=0

$deleteMethod

$prototype=void addLayout ( QLayout * layout, int stretch = 0 )
$method=|void|addLayout|QLayout *,int=0

$prototype=void addSpacerItem ( QSpacerItem * spacerItem )
$method=|void|addSpacerItem|QSpacerItem *

$prototype=void addSpacing ( int size )
$method=|void|addSpacing|int

$prototype=void addStretch ( int stretch = 0 )
$method=|void|addStretch|int=0

$prototype=void addStrut ( int size )
$method=|void|addStrut|int

$prototype=void addWidget ( QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
$method=|void|addWidget|QWidget *,int=0,Qt::Alignment=0

$prototype=Direction direction () const
$method=|QBoxLayout::Direction|direction|

$prototype=void insertLayout ( int index, QLayout * layout, int stretch = 0 )
$method=|void|insertLayout|int,QLayout *,int=0

$prototype=void insertSpacerItem ( int index, QSpacerItem * spacerItem )
$method=|void|insertSpacerItem|int,QSpacerItem *

$prototype=void insertSpacing ( int index, int size )
$method=|void|insertSpacing|int,int

$prototype=void insertStretch ( int index, int stretch = 0 )
$method=|void|insertStretch|int,int=0

$prototype=void insertWidget ( int index, QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
$method=|void|insertWidget|int,QWidget *,int=0,Qt::Alignment=0

$prototype=void setDirection ( Direction direction )
$method=|void|setDirection|QBoxLayout::Direction

$prototype=void setSpacing ( int spacing )
$method=|void|setSpacing|int

$prototype=void setStretch ( int index, int stretch )
$method=|void|setStretch|int,int

$prototype=bool setStretchFactor ( QWidget * widget, int stretch )
$internalMethod=|bool|setStretchFactor,setStretchFactor1|QWidget *,int

$prototype=bool setStretchFactor ( QLayout * layout, int stretch )
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
$addMethod=setStretchFactor

$prototype=int spacing () const
$method=|int|spacing|

$prototype=int stretch ( int index ) const
$method=|int|stretch|int

$prototype=virtual void addItem ( QLayoutItem * item )
$virtualMethod=|void|addItem|QLayoutItem *

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

$prototype=virtual void setGeometry ( const QRect & r )
$virtualMethod=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QLayoutItem * takeAt ( int index )
$virtualMethod=|QLayoutItem *|takeAt|int

#pragma ENDDUMP
