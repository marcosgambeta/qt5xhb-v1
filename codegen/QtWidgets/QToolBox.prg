%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QToolBox ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
$internalMethod=|int|addItem,addItem1|QWidget *,const QIcon &,const QString &

$prototype=int addItem ( QWidget * w, const QString & text )
$internalMethod=|int|addItem,addItem2|QWidget *,const QString &

/*
[1]int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
[2]int addItem ( QWidget * w, const QString & text )
*/

HB_FUNC_STATIC( QTOOLBOX_ADDITEM )
{
  if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QToolBox_addItem1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    QToolBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addItem

$prototype=int count () const
$method=|int|count|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=QWidget * currentWidget () const
$method=|QWidget *|currentWidget|

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
$internalMethod=|int|insertItem,insertItem1|int,QWidget *,const QIcon &,const QString &

$prototype=int insertItem ( int index, QWidget * widget, const QString & text )
$internalMethod=|int|insertItem,insertItem2|int,QWidget *,const QString &

/*
[1]int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
[2]int insertItem ( int index, QWidget * widget, const QString & text )
*/

HB_FUNC_STATIC( QTOOLBOX_INSERTITEM )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    QToolBox_insertItem1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    QToolBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertItem

$prototype=bool isItemEnabled ( int index ) const
$method=|bool|isItemEnabled|int

$prototype=QIcon itemIcon ( int index ) const
$method=|QIcon|itemIcon|int

$prototype=QString itemText ( int index ) const
$method=|QString|itemText|int

$prototype=QString itemToolTip ( int index ) const
$method=|QString|itemToolTip|int

$prototype=void removeItem ( int index )
$method=|void|removeItem|int

$prototype=void setItemEnabled ( int index, bool enabled )
$method=|void|setItemEnabled|int,bool

$prototype=void setItemIcon ( int index, const QIcon & icon )
$method=|void|setItemIcon|int,const QIcon &

$prototype=void setItemText ( int index, const QString & text )
$method=|void|setItemText|int,const QString &

$prototype=void setItemToolTip ( int index, const QString & toolTip )
$method=|void|setItemToolTip|int,const QString &

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

$beginSignals
$signal=|currentChanged(int)
$endSignals

#pragma ENDDUMP
