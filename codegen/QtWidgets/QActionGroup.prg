$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionGroup INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addAction
   METHOD checkedAction
   METHOD isEnabled
   METHOD isExclusive
   METHOD isVisible
   METHOD removeAction
   METHOD setDisabled
   METHOD setEnabled
   METHOD setExclusive
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QActionGroup ( QObject * parent )
*/
HB_FUNC_STATIC( QACTIONGROUP_NEW )
{
  QActionGroup * o = new QActionGroup ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QAction * addAction ( QAction * action )
*/
void QActionGroup_addAction1 ()
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQACTION(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
void QActionGroup_addAction2 ()
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
void QActionGroup_addAction3 ()
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

//[1]QAction * addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QActionGroup_addAction1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QActionGroup_addAction2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QActionGroup_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * checkedAction () const
*/
HB_FUNC_STATIC( QACTIONGROUP_CHECKEDACTION )
{
  QActionGroup * obj = (QActionGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->checkedAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isExclusive () const
*/
$method=|bool|isExclusive|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
void removeAction ( QAction * action )
*/
$method=|void|removeAction|QAction *

/*
void setDisabled ( bool b )
*/
$method=|void|setDisabled|bool

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setExclusive ( bool )
*/
$method=|void|setExclusive|bool

/*
void setVisible ( bool )
*/
$method=|void|setVisible|bool

#pragma ENDDUMP
