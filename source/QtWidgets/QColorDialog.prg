/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QColorDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD setCurrentColor
   METHOD open1
   METHOD open2
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedColor
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD setCustomColor
   METHOD customCount
   METHOD getColor
   METHOD standardColor
   METHOD setStandardColor
   METHOD onColorSelected
   METHOD onCurrentColorChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QColorDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QColorDialog>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QColorDialog>
#endif
#endif

/*
explicit QColorDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QColorDialog * o = new QColorDialog ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColorDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QColorDialog * o = new QColorDialog ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColorDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]explicit QColorDialog ( QWidget * parent = 0 )
//[2]explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_NEW1 );
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLORDIALOG_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QColor currentColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_CURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->currentColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
void setCurrentColor ( const QColor & color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setCurrentColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ()
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPEN1 )
{
#ifdef Q_NO_USING_KEYWORD
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->open (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPEN2 )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void open ()
//[2]void open ( QObject * receiver, const char * member )

HB_FUNC_STATIC( QCOLORDIALOG_OPEN )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_OPEN1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_OPEN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ColorDialogOptions options () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPTIONS )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->options (  ) );
  }
}

/*
void setOptions ( ColorDialogOptions options )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETOPTIONS )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QColorDialog::ColorDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QColor selectedColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_SELECTEDCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->selectedColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void setOption ( ColorDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETOPTION )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QColorDialog::ColorDialogOption) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( ColorDialogOption option ) const
*/
HB_FUNC_STATIC( QCOLORDIALOG_TESTOPTION )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QColorDialog::ColorDialogOption) par1 ) );
  }
}


/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETVISIBLE )
{
  QColorDialog * obj = (QColorDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static QColor customColor(int index)
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOLOR )
{
  QColor * ptr = new QColor( QColorDialog::customColor ( (int) hb_parni(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
}

/*
static void setCustomColor(int index, QColor color)
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCUSTOMCOLOR )
{
  QColor par2 = ISOBJECT(2)? *(QColor *) _qtxhb_itemGetPtr(2) : QColor(hb_parc(2));
  QColorDialog::setCustomColor ( (int) hb_parni(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static int customCount ()
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOUNT )
{
  hb_retni( QColorDialog::customCount (  ) );
}


/*
static QColor getColor(const QColor &initial = Qt::white, QWidget *parent = 0, const QString &title = QString(), ColorDialogOptions options = 0)
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
{
  QColor par1 = ISNIL(1)? Qt::white : ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  QColor * ptr = new QColor( QColorDialog::getColor ( par1, par2, par3,  (QColorDialog::ColorDialogOptions) par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
}


//
////[1]QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
////[2]QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )
//
//HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
//{
//  if( ISBETWEEN(3,4) && (ISQCOLOR(1)||ISCHAR(1)) && ISQWIDGET(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR1 );
//  }
//  else if( ISBETWEEN(0,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQWIDGET(2)||ISNIL(2)) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR2 );
//  }
//  else
//  {
//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//  }
//}
//?>



/*
static QColor standardColor(int index)
*/
HB_FUNC_STATIC( QCOLORDIALOG_STANDARDCOLOR )
{
  QColor * ptr = new QColor( QColorDialog::standardColor ( (int) hb_parni(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
}

/*
static void setStandardColor(int index, QColor color)
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETSTANDARDCOLOR )
{
  QColor par2 = ISOBJECT(2)? *(QColor *) _qtxhb_itemGetPtr(2) : QColor(hb_parc(2));
  QColorDialog::setStandardColor ( (int) hb_parni(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
