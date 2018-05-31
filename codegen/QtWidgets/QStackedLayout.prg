%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLayout

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStackedLayout ()
$internalConstructor=|new1|

$prototype=QStackedLayout ( QWidget * parent )
$internalConstructor=|new2|QWidget *

$prototype=QStackedLayout ( QLayout * parentLayout )
$internalConstructor=|new3|QLayout *

//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStackedLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStackedLayout_new2();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QStackedLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int addWidget ( QWidget * widget )
$method=|int|addWidget|QWidget *

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=QWidget * currentWidget () const
$method=|QWidget *|currentWidget|

$prototype=int insertWidget ( int index, QWidget * widget )
$method=|int|insertWidget|int,QWidget *

$prototype=void setStackingMode ( StackingMode stackingMode )
$method=|void|setStackingMode|QStackedLayout::StackingMode

$prototype=StackingMode stackingMode () const
$method=|QStackedLayout::StackingMode|stackingMode|

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

$beginSignals
$signal=|setCurrentIndex(int)
$signal=|setCurrentWidget(QWidget*)
$endSignals

#pragma ENDDUMP
