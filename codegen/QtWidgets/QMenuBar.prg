$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QMenuBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isDefaultUp
   METHOD setDefaultUp
   METHOD isNativeMenuBar
   METHOD setNativeMenuBar
   METHOD setActiveAction
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setVisible
   METHOD actionGeometry
   METHOD actionAt
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD setDefaultAction
   METHOD defaultAction
   METHOD wceCommands
   METHOD wceRefresh
   METHOD toNSMenu

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QMenuBar ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QAction * activeAction () const
*/
$method=|QAction *|activeAction|

/*
QAction * addAction ( const QString & text )
*/
void QMenuBar_addAction1 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
void QMenuBar_addAction2 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
void QMenuBar_addAction3 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addAction1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QMenuBar_addAction2();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenuBar_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
void QMenuBar_addMenu1 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addMenu ( PQMENU(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
void QMenuBar_addMenu2 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->addMenu ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
void QMenuBar_addMenu3 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QMenu * ptr = obj->addMenu ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenuBar_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenuBar_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
$method=|QAction *|addSeparator|

/*
void clear ()
*/
$method=|void|clear|

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
$method=|QAction *|insertMenu|QAction *,QMenu *

/*
QAction * insertSeparator ( QAction * before )
*/
$method=|QAction *|insertSeparator|QAction *

/*
bool isDefaultUp () const
*/
$method=|bool|isDefaultUp|

/*
void setDefaultUp ( bool )
*/
$method=|void|setDefaultUp|

/*
bool isNativeMenuBar () const
*/
$method=|bool|isNativeMenuBar|

/*
void setNativeMenuBar ( bool nativeMenuBar )
*/
$method=|void|setNativeMenuBar|bool

/*
void setActiveAction ( QAction * act )
*/
$method=|void|setActiveAction|QAction *

/*
int heightForWidth ( int ) const
*/
$method=|int|heightForWidth|int

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
QRect actionGeometry(QAction *) const
*/
$method=|QRect|actionGeometry|QAction *

/*
QAction *actionAt(const QPoint &) const
*/
$method=|QAction *|actionAt|const QPoint &

/*
QWidget *cornerWidget(Qt::Corner corner = Qt::TopRightCorner) const
*/
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

/*
void setCornerWidget(QWidget *w, Qt::Corner corner = Qt::TopRightCorner)
*/
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->setDefaultAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENUBAR_DEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->defaultAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
}

/*
static void wceCommands(uint command)
*/
HB_FUNC_STATIC( QMENUBAR_WCECOMMANDS )
{
#ifdef Q_OS_WINCE
  if( ISNUM(1) )
  {
    QMenuBar::wceCommands ( (uint) hb_parni(1) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void wceRefresh()
*/
HB_FUNC_STATIC( QMENUBAR_WCEREFRESH )
{
#ifdef Q_OS_WINCE
  QMenuBar::wceRefresh ();
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
NSMenu * QMenuBar::toNSMenu()
*/
HB_FUNC_STATIC( QMENUBAR_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (NSMenu *) obj->toNSMenu () );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

#pragma ENDDUMP
