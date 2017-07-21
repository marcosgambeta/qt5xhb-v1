$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
#endif

CLASS QDialogButtonBox INHERIT QWidget

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
$internalConstructor=|new1|QWidget *=0

/*
QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

/*
QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )
*/
$internalConstructor=|new3|QDialogButtonBox::StandardButtons,Qt::Orientation=Qt::Horizontal,QWidget *=0

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
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QDialogButtonBox::ButtonRole

/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QDialogButtonBox::ButtonRole

/*
QPushButton * addButton ( StandardButton button )
*/
$internalMethod=|QPushButton *|addButton,addButton3|QDialogButtonBox::StandardButton

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
$method=|QPushButton *|button|QDialogButtonBox::StandardButton

/*
ButtonRole buttonRole ( QAbstractButton * button ) const
*/
$method=|QDialogButtonBox::ButtonRole|buttonRole|QAbstractButton *

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
$method=|void|setStandardButtons|QDialogButtonBox::StandardButtons

/*
StandardButton standardButton ( QAbstractButton * button ) const
*/
$method=|QDialogButtonBox::StandardButton|standardButton|QAbstractButton *

/*
StandardButtons standardButtons () const
*/
$method=|QDialogButtonBox::StandardButtons|standardButtons|

#pragma ENDDUMP
