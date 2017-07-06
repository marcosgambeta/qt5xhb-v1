$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
REQUEST QBUTTONGROUP
#endif

CLASS QAbstractButton INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD autoExclusive
   METHOD setAutoExclusive
   METHOD autoRepeat
   METHOD setAutoRepeat
   METHOD autoRepeatDelay
   METHOD setAutoRepeatDelay
   METHOD autoRepeatInterval
   METHOD setAutoRepeatInterval
   METHOD icon
   METHOD setIcon
   METHOD iconSize
   METHOD setIconSize
   METHOD isCheckable
   METHOD setCheckable
   METHOD isChecked
   METHOD setChecked
   METHOD isDown
   METHOD setDown
   METHOD shortcut
   METHOD setShortcut
   METHOD text
   METHOD setText
   METHOD group
   METHOD animateClick
   METHOD click
   METHOD toggle

   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
bool autoExclusive () const
*/
$method=|bool|autoExclusive|

/*
void setAutoExclusive ( bool )
*/
$method=|void|setAutoExclusive|bool

/*
bool autoRepeat () const
*/
$method=|bool|autoRepeat|

/*
void setAutoRepeat ( bool )
*/
$method=|void|setAutoRepeat|bool

/*
int autoRepeatDelay () const
*/
$method=|int|autoRepeatDelay|

/*
void setAutoRepeatDelay ( int )
*/
$method=|void|setAutoRepeatDelay|int

/*
int autoRepeatInterval () const
*/
$method=|int|autoRepeatInterval|

/*
void setAutoRepeatInterval ( int )
*/
$method=|void|setAutoRepeatInterval|int

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
void setCheckable ( bool )
*/
$method=|void|setCheckable|bool

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
void setChecked ( bool )
*/
$method=|void|setChecked|bool

/*
bool isDown () const
*/
$method=|bool|isDown|

/*
void setDown ( bool )
*/
$method=|void|setDown|bool

/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut () );
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
#endif
}

/*
void setShortcut ( const QKeySequence & key )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETSHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQKEYSEQUENCE(1) )
    {
      obj->setShortcut ( *PQKEYSEQUENCE(1) );
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
QString text () const
*/
$method=|QString|text|

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
QButtonGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_GROUP )
{
#ifndef QT_NO_BUTTONGROUP
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QButtonGroup * ptr = obj->group ();
    _qt5xhb_createReturnClass ( ptr, "QBUTTONGROUP" );
  }
#endif
}

/*
void animateClick ( int msec = 100 )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ANIMATECLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->animateClick ( OPINT(1,100) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void click ()
*/
$method=|void|click|

/*
void toggle ()
*/
$method=|void|toggle|

#pragma ENDDUMP
