/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
REQUEST QCHECKBOX
#endif

CLASS QMessageBox INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD setDetailedText
   METHOD escapeButton
   METHOD icon
   METHOD setIcon
   METHOD iconPixmap
   METHOD setIconPixmap
   METHOD informativeText
   METHOD setInformativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton
   METHOD setEscapeButton
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD setStandardButtons
   METHOD text
   METHOD setText
   METHOD textFormat
   METHOD setTextFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning
   METHOD textInteractionFlags
   METHOD setTextInteractionFlags
   METHOD checkBox
   METHOD setCheckBox
   METHOD standardIcon
   METHOD buttonText
   METHOD setButtonText

   METHOD onButtonClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMessageBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMessageBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMessageBox>
#endif

/*
explicit QMessageBox ( QWidget * parent = 0 )
*/
void QMessageBox_new1 ()
{
  QMessageBox * o = new QMessageBox ( OPQWIDGET(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/
void QMessageBox_new2 ()
{
  int par4 = ISNIL(4)? (int) QMessageBox::NoButton : hb_parni(4);
  int par6 = ISNIL(6)? (int) Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint : hb_parni(6);
  QMessageBox * o = new QMessageBox ( (QMessageBox::Icon) hb_parni(1), PQSTRING(2), PQSTRING(3), (QMessageBox::StandardButtons) par4, OPQWIDGET(5,0), (Qt::WindowFlags) par6 );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QMessageBox ( QWidget * parent = 0 )
//[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMessageBox_new1();
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTQWIDGET(5) && ISOPTNUM(6) )
  {
    QMessageBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_DELETE )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addButton ( QAbstractButton * button, ButtonRole role )
*/
void QMessageBox_addButton1 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addButton ( PQABSTRACTBUTTON(1), (QMessageBox::ButtonRole) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
void QMessageBox_addButton2 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->addButton ( PQSTRING(1), (QMessageBox::ButtonRole) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}

/*
QPushButton * addButton ( StandardButton button )
*/
void QMessageBox_addButton3 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->addButton ( (QMessageBox::StandardButton) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}

//[1]void addButton ( QAbstractButton * button, ButtonRole role )
//[2]QPushButton * addButton ( const QString & text, ButtonRole role )
//[3]QPushButton * addButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QMessageBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageBox_addButton2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) )
  {
    QMessageBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button ( StandardButton which ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractButton * ptr = obj->button ( (QMessageBox::StandardButton) hb_parni(1) );
      _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTBUTTON" );
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
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONROLE )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

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
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }

    hb_itemReturnRelease(pArray);
  }
}

/*
QAbstractButton * clickedButton () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CLICKEDBUTTON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractButton * ptr = obj->clickedButton ();
    _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTBUTTON" );
  }
}

/*
QPushButton * defaultButton () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DEFAULTBUTTON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->defaultButton ();
    _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}

/*
QString detailedText () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DETAILEDTEXT )
{
#ifndef QT_NO_TEXTEDIT
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->detailedText () );
  }
#endif
}

/*
void setDetailedText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDETAILEDTEXT )
{
#ifndef QT_NO_TEXTEDIT
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDetailedText ( PQSTRING(1) );
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
QAbstractButton * escapeButton () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ESCAPEBUTTON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractButton * ptr = obj->escapeButton ();
    _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTBUTTON" );
  }
}

/*
Icon icon () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->icon () );
  }
}

/*
void setIcon ( Icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setIcon ( (QMessageBox::Icon) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPixmap iconPixmap () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICONPIXMAP )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->iconPixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setIconPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICONPIXMAP )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPIXMAP(1) )
    {
      obj->setIconPixmap ( *PQPIXMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString informativeText () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATIVETEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->informativeText () );
  }
}

/*
void setInformativeText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETINFORMATIVETEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setInformativeText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMESSAGEBOX_OPEN )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      obj->open ( PQOBJECT(1), PCONSTCHAR(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_REMOVEBUTTON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTBUTTON(1) )
    {
      obj->removeButton ( PQABSTRACTBUTTON(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultButton ( QPushButton * button )
*/
void QMessageBox_setDefaultButton1 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDefaultButton ( PQPUSHBUTTON(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultButton ( StandardButton button )
*/
void QMessageBox_setDefaultButton2 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDefaultButton ( (QMessageBox::StandardButton) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setDefaultButton ( QPushButton * button )
//[2]void setDefaultButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    QMessageBox_setDefaultButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setDefaultButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEscapeButton ( QAbstractButton * button )
*/
void QMessageBox_setEscapeButton1 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEscapeButton ( PQABSTRACTBUTTON(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEscapeButton ( StandardButton button )
*/
void QMessageBox_setEscapeButton2 ()
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEscapeButton ( (QMessageBox::StandardButton) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setEscapeButton ( QAbstractButton * button )
//[2]void setEscapeButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QMessageBox_setEscapeButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setEscapeButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWMODALITY )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWindowModality ( (Qt::WindowModality) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowTitle ( const QString & title )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWTITLE )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setWindowTitle ( PQSTRING(1) );
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
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTON )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTONS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->standardButtons () );
  }
}

/*
void setStandardButtons ( StandardButtons buttons )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETSTANDARDBUTTONS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setStandardButtons ( (QMessageBox::StandardButtons) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::TextFormat textFormat () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTFORMAT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textFormat () );
  }
}

/*
void setTextFormat ( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTFORMAT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTextFormat ( (Qt::TextFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETVISIBLE )
{
#ifdef Q_OS_WINCE
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
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
int exec ()
*/
HB_FUNC_STATIC( QMESSAGEBOX_EXEC )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->exec () );
  }
}

/*
static void about ( QWidget * parent, const QString & title, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUT )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QMessageBox::about ( PQWIDGET(1), PQSTRING(2), PQSTRING(3) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void aboutQt ( QWidget * parent, const QString & title = QString() )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUTQT )
{
  if( ISQWIDGET(1) && ISOPTCHAR(2) )
  {
    QMessageBox::aboutQt ( PQWIDGET(1), OPQSTRING(2,QString()) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_CRITICAL )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
    int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
    hb_retni( QMessageBox::critical ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), (QMessageBox::StandardButtons) par4, (QMessageBox::StandardButton) par5 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATION )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
    int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
    hb_retni( QMessageBox::information ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), (QMessageBox::StandardButtons) par4, (QMessageBox::StandardButton) par5 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_QUESTION )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
    int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
    hb_retni( QMessageBox::question ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), (QMessageBox::StandardButtons) par4, (QMessageBox::StandardButton) par5 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_WARNING )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
    int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
    hb_retni( QMessageBox::warning ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), (QMessageBox::StandardButtons) par4, (QMessageBox::StandardButton) par5 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::TextInteractionFlags textInteractionFlags() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTINTERACTIONFLAGS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textInteractionFlags () );
  }
}

/*
void setTextInteractionFlags (Qt::TextInteractionFlags flags)
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTINTERACTIONFLAGS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTextInteractionFlags ( (Qt::TextInteractionFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCheckBox * checkBox() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CHECKBOX )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCheckBox * ptr = obj->checkBox ();
    _qt5xhb_createReturnClass ( ptr, "QCHECKBOX" );
  }
}

/*
void setCheckBox (QCheckBox *cb)
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETCHECKBOX )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCHECKBOX(1) )
    {
      obj->setCheckBox ( PQCHECKBOX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QPixmap standardIcon(Icon icon)
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDICON )
{
  if( ISNUM(1) )
  {
    QPixmap * ptr = new QPixmap( QMessageBox::standardIcon ( (QMessageBox::Icon) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString buttonText(int button) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONTEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->buttonText ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setButtonText(int button, const QString &text)
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETBUTTONTEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setButtonText ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
