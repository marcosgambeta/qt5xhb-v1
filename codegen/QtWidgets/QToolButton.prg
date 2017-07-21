$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QToolButton INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD arrowType
   METHOD autoRaise
   METHOD defaultAction
   METHOD menu
   METHOD popupMode
   METHOD setArrowType
   METHOD setAutoRaise
   METHOD setMenu
   METHOD setPopupMode
   METHOD toolButtonStyle
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setDefaultAction
   METHOD setToolButtonStyle
   METHOD showMenu

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QToolButton ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
Qt::ArrowType arrowType () const
*/
$method=|Qt::ArrowType|arrowType|

/*
bool autoRaise () const
*/
$method=|bool|autoRaise|

/*
QAction * defaultAction () const
*/
$method=|QAction *|defaultAction|

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_MENU )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->menu ();
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
#endif
}

/*
ToolButtonPopupMode popupMode () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_POPUPMODE )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->popupMode () );
  }
#endif
}

/*
void setArrowType ( Qt::ArrowType type )
*/
$method=|void|setArrowType|Qt::ArrowType

/*
void setAutoRaise ( bool enable )
*/
$method=|void|setAutoRaise|bool

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETMENU )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setPopupMode ( ToolButtonPopupMode mode )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETPOPUPMODE )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPopupMode ( (QToolButton::ToolButtonPopupMode) hb_parni(1) );
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
Qt::ToolButtonStyle toolButtonStyle () const
*/
$method=|Qt::ToolButtonStyle|toolButtonStyle|

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void setDefaultAction ( QAction * action )
*/
$method=|void|setDefaultAction|QAction *

/*
void setToolButtonStyle ( Qt::ToolButtonStyle style )
*/
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

/*
void showMenu ()
*/
HB_FUNC_STATIC( QTOOLBUTTON_SHOWMENU )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showMenu ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
