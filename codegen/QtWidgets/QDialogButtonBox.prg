$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
#endif

CLASS QDialogButtonBox INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD centerButtons
   METHOD clear
   METHOD orientation
   METHOD removeButton
   METHOD setCenterButtons
   METHOD setOrientation
   METHOD setStandardButtons
   METHOD standardButton
   METHOD standardButtons

   METHOD onAccepted
   METHOD onClicked
   METHOD onHelpRequested
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDialogButtonBox ( QWidget * parent = 0 )
*/
void QDialogButtonBox_new1 ()
{
  QDialogButtonBox * o = new QDialogButtonBox ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
void QDialogButtonBox_new2 ()
{
  QDialogButtonBox * o = new QDialogButtonBox ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )
*/
void QDialogButtonBox_new3 ()
{
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) Qt::Horizontal : hb_parni(2);
  QDialogButtonBox * o = new QDialogButtonBox ( (QDialogButtonBox::StandardButtons) par1, (Qt::Orientation) par2, OPQWIDGET(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDialogButtonBox ( QWidget * parent = 0 )
//[2]QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
//[3]QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )

HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDialogButtonBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QDialogButtonBox_new2();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTQWIDGET(3) )
  {
    QDialogButtonBox_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addButton ( QAbstractButton * button, ButtonRole role )
*/
void QDialogButtonBox_addButton1 ()
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addButton ( PQABSTRACTBUTTON(1), (QDialogButtonBox::ButtonRole) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
void QDialogButtonBox_addButton2 ()
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->addButton ( PQSTRING(1), (QDialogButtonBox::ButtonRole) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}

/*
QPushButton * addButton ( StandardButton button )
*/
void QDialogButtonBox_addButton3 ()
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->addButton ( (QDialogButtonBox::StandardButton) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}

//[1]void addButton ( QAbstractButton * button, ButtonRole role )
//[2]QPushButton * addButton ( const QString & text, ButtonRole role )
//[3]QPushButton * addButton ( StandardButton button )

HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDialogButtonBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPushButton * button ( StandardButton which ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTON )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QPushButton * ptr = obj->button ( (QDialogButtonBox::StandardButton) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ButtonRole buttonRole ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTONROLE )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTBUTTON(1) )
    {
      hb_retni( obj->buttonRole ( PQABSTRACTBUTTON(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool centerButtons () const
*/
$method=|bool|centerButtons|

/*
void clear ()
*/
$method=|void|clear|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void removeButton ( QAbstractButton * button )
*/
$method=|void|removeButton|QAbstractButton *

/*
void setCenterButtons ( bool center )
*/
$method=|void|setCenterButtons|bool

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setStandardButtons ( StandardButtons buttons )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETSTANDARDBUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setStandardButtons ( (QDialogButtonBox::StandardButtons) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
StandardButton standardButton ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTON )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTBUTTON(1) )
    {
      hb_retni( obj->standardButton ( PQABSTRACTBUTTON(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
StandardButtons standardButtons () const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTONS )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->standardButtons () );
  }
}

#pragma ENDDUMP
