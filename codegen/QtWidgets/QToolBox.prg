$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QToolBox INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertItem
   METHOD isItemEnabled
   METHOD itemIcon
   METHOD itemText
   METHOD itemToolTip
   METHOD removeItem
   METHOD setItemEnabled
   METHOD setItemIcon
   METHOD setItemText
   METHOD setItemToolTip
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QToolBox ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
*/
$internalMethod=|int|addItem,addItem1|QWidget *,const QIcon &,const QString &

/*
int addItem ( QWidget * w, const QString & text )
*/
$internalMethod=|int|addItem,addItem2|QWidget *,const QString &

//[1]int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
//[2]int addItem ( QWidget * w, const QString & text )

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

/*
int count () const
*/
$method=|int|count|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
QWidget * currentWidget () const
*/
$method=|QWidget *|currentWidget|

/*
int indexOf ( QWidget * widget ) const
*/
$method=|int|indexOf|QWidget *

/*
int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
*/
$internalMethod=|int|insertItem,insertItem1|int,QWidget *,const QIcon &,const QString &

/*
int insertItem ( int index, QWidget * widget, const QString & text )
*/
$internalMethod=|int|insertItem,insertItem2|int,QWidget *,const QString &

//[1]int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
//[2]int insertItem ( int index, QWidget * widget, const QString & text )

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

/*
bool isItemEnabled ( int index ) const
*/
$method=|bool|isItemEnabled|int

/*
QIcon itemIcon ( int index ) const
*/
$method=|QIcon|itemIcon|int

/*
QString itemText ( int index ) const
*/
$method=|QString|itemText|int

/*
QString itemToolTip ( int index ) const
*/
$method=|QString|itemToolTip|int

/*
void removeItem ( int index )
*/
$method=|void|removeItem|int

/*
void setItemEnabled ( int index, bool enabled )
*/
$method=|void|setItemEnabled|int,bool

/*
void setItemIcon ( int index, const QIcon & icon )
*/
$method=|void|setItemIcon|int,const QIcon &

/*
void setItemText ( int index, const QString & text )
*/
$method=|void|setItemText|int,const QString &

/*
void setItemToolTip ( int index, const QString & toolTip )
*/
$method=|void|setItemToolTip|int,const QString &

/*
QWidget * widget ( int index ) const
*/
$method=|QWidget *|widget|int

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setCurrentWidget ( QWidget * widget )
*/
$method=|void|setCurrentWidget|QWidget *

#pragma ENDDUMP
