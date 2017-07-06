$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
#endif

CLASS QPushButton INHERIT QAbstractButton

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoDefault
   METHOD isDefault
   METHOD isFlat
   METHOD menu
   METHOD setAutoDefault
   METHOD setDefault
   METHOD setFlat
   METHOD setMenu
   METHOD showMenu
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QPushButton ( QWidget * parent = 0 )
*/
void QPushButton_new1 ()
{
  QPushButton * o = new QPushButton ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QPushButton ( const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new2 ()
{
  QPushButton * o = new QPushButton ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QPushButton * o = new QPushButton ( par1, PQSTRING(2), OPQWIDGET(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPushButton ( const QPixmap & icon, const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new4 ()
{
  QPushButton * o = new QPushButton ( *PQPIXMAP(1), PQSTRING(2), OPQWIDGET(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QPushButton ( QWidget * parent = 0 )
//[2]explicit QPushButton ( const QString & text, QWidget * parent = 0 )
//[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
//[4]QPushButton ( const QPixmap & icon, const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPushButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QPushButton_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QPushButton_new3();
  }
  else if( ISBETWEEN(2,3) && ISQPIXMAP(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QPushButton_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoDefault () const
*/
$method=|bool|autoDefault|

/*
bool isDefault () const
*/
$method=|bool|isDefault|

/*
bool isFlat () const
*/
$method=|bool|isFlat|

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_MENU )
{
#ifndef QT_NO_MENU
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->menu ();
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
#endif
}

/*
void setAutoDefault ( bool )
*/
$method=|void|setAutoDefault|bool

/*
void setDefault ( bool )
*/
$method=|void|setDefault|bool

/*
void setFlat ( bool )
*/
$method=|void|setFlat|bool

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETMENU )
{
#ifndef QT_NO_MENU
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMENU(1) )
    {
      obj->setMenu ( PQMENU(1) );
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
void showMenu ()
*/
HB_FUNC_STATIC( QPUSHBUTTON_SHOWMENU )
{
#ifndef QT_NO_MENU
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showMenu ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_MINIMUMSIZEHINT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_SIZEHINT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
