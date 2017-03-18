/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
REQUEST QCHECKBOX
#endif

CLASS QMessageBox INHERIT QDialog

   DATA class_id INIT Class_Id_QMessageBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addButton1
   METHOD addButton2
   METHOD addButton3
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
   METHOD setDefaultButton1
   METHOD setDefaultButton2
   METHOD setDefaultButton
   METHOD setEscapeButton1
   METHOD setEscapeButton2
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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMessageBox>
#endif

/*
explicit QMessageBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMESSAGEBOX_NEW1 )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QMessageBox * o = new QMessageBox ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/
HB_FUNC_STATIC( QMESSAGEBOX_NEW2 )
{
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QMessageBox::NoButton : hb_parni(4);
  QWidget * par5 = ISNIL(5)? 0 : (QWidget *) _qt5xhb_itemGetPtr(5);
  int par6 = ISNIL(6)? (int) Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint : hb_parni(6);
  QMessageBox * o = new QMessageBox (  (QMessageBox::Icon) par1, par2, par3,  (QMessageBox::StandardButtons) par4, par5,  (Qt::WindowFlags) par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]explicit QMessageBox ( QWidget * parent = 0 )
//[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_NEW1 );
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISQWIDGET(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_NEW2 );
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
HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON1 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->addButton ( par1,  (QMessageBox::ButtonRole) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON2 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = hb_parni(2);
    QPushButton * ptr = obj->addButton ( par1,  (QMessageBox::ButtonRole) par2 );
    _qt5xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}

/*
QPushButton * addButton ( StandardButton button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON3 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QPushButton * ptr = obj->addButton (  (QMessageBox::StandardButton) par1 );
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
    HB_FUNC_EXEC( QMESSAGEBOX_ADDBUTTON1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_ADDBUTTON2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_ADDBUTTON3 );
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
    int par1 = hb_parni(1);
    QAbstractButton * ptr = obj->button (  (QMessageBox::StandardButton) par1 );
    _qt5xhb_createReturnQWidgetClass ( (QWidget *) ptr, "QABSTRACTBUTTON" );
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
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->buttonRole ( par1 ) );
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
    QList<QAbstractButton *> list = obj->buttons (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    QAbstractButton * ptr = obj->clickedButton (  );
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
    QPushButton * ptr = obj->defaultButton (  );
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
    hb_retc( (const char *) obj->detailedText (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDetailedText ( par1 );
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
    QAbstractButton * ptr = obj->escapeButton (  );
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
    hb_retni( obj->icon (  ) );
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
    int par1 = hb_parni(1);
    obj->setIcon (  (QMessageBox::Icon) par1 );
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
    QPixmap * ptr = new QPixmap( obj->iconPixmap (  ) );
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
    QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
    obj->setIconPixmap ( *par1 );
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
    hb_retc( (const char *) obj->informativeText (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setInformativeText ( par1 );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
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
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    obj->removeButton ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultButton ( QPushButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON1 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * par1 = (QPushButton *) _qt5xhb_itemGetPtr(1);
    obj->setDefaultButton ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultButton ( StandardButton button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON2 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultButton (  (QMessageBox::StandardButton) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setDefaultButton ( QPushButton * button )
//[2]void setDefaultButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETDEFAULTBUTTON1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETDEFAULTBUTTON2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEscapeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON1 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    obj->setEscapeButton ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEscapeButton ( StandardButton button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON2 )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEscapeButton (  (QMessageBox::StandardButton) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setEscapeButton ( QAbstractButton * button )
//[2]void setEscapeButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETESCAPEBUTTON1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETESCAPEBUTTON2 );
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
    int par1 = hb_parni(1);
    obj->setWindowModality (  (Qt::WindowModality) par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setWindowTitle ( par1 );
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
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->standardButton ( par1 ) );
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
    hb_retni( obj->standardButtons (  ) );
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
    int par1 = hb_parni(1);
    obj->setStandardButtons (  (QMessageBox::StandardButtons) par1 );
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
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setText ( par1 );
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
    hb_retni( obj->textFormat (  ) );
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
    int par1 = hb_parni(1);
    obj->setTextFormat (  (Qt::TextFormat) par1 );
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
      obj->setVisible ( (bool) hb_parl(1) );
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
    hb_retni( obj->exec (  ) );
  }
}


/*
static void about ( QWidget * parent, const QString & title, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUT )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  QMessageBox::about ( par1, par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void aboutQt ( QWidget * parent, const QString & title = QString() )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUTQT )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QMessageBox::aboutQt ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_CRITICAL )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( QMessageBox::critical ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
static StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATION )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( QMessageBox::information ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
static StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_QUESTION )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( QMessageBox::question ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
static StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_WARNING )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( QMessageBox::warning ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
Qt::TextInteractionFlags textInteractionFlags() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTINTERACTIONFLAGS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textInteractionFlags (  ) );
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
    int par1 = hb_parni(1);
    obj->setTextInteractionFlags (  (Qt::TextInteractionFlags) par1 );
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
    QCheckBox * ptr = obj->checkBox (  );
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
    QCheckBox * par1 = (QCheckBox *) _qt5xhb_itemGetPtr(1);
    obj->setCheckBox ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QPixmap standardIcon(Icon icon)
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDICON )
{
  int par1 = hb_parni(1);
  QPixmap * ptr = new QPixmap( QMessageBox::standardIcon (  (QMessageBox::Icon) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}


/*
QString buttonText(int button) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONTEXT )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->buttonText ( (int) hb_parni(1) ).toLatin1().data() );
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
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setButtonText ( (int) hb_parni(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
