/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QFontDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD setCurrentFont
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedFont
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD getFont1
   METHOD getFont2
   METHOD getFont
   METHOD onCurrentFontChanged
   METHOD onFontSelected
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFontDialog>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFontDialog>
#endif
#endif

/*
explicit QFontDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFONTDIALOG_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QFontDialog * o = new QFontDialog ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
explicit QFontDialog ( const QFont & initial, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFONTDIALOG_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QFontDialog * o = new QFontDialog ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]explicit QFontDialog ( QWidget * parent = 0 )
//[2]explicit QFontDialog ( const QFont & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTDIALOG_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFontDialog * obj = (QFontDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QFont currentFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_CURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->currentFont (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void setCurrentFont ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETCURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFONTDIALOG_OPEN )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
FontDialogOptions options () const
*/
HB_FUNC_STATIC( QFONTDIALOG_OPTIONS )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->options (  ) );
  }
}

/*
void setOptions ( FontDialogOptions options )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTIONS )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QFontDialog::FontDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont selectedFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_SELECTEDFONT )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->selectedFont (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void setOption ( FontDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTION )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QFontDialog::FontDialogOption) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( FontDialogOption option ) const
*/
HB_FUNC_STATIC( QFONTDIALOG_TESTOPTION )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QFontDialog::FontDialogOption) par1 ) );
  }
}


/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETVISIBLE )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QFont getFont(bool *ok, QWidget *parent = 0)
*/
HB_FUNC_STATIC( QFONTDIALOG_GETFONT1 )
{
  bool par1;
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0, const QString &title = QString(), FontDialogOptions options = 0)
*/
HB_FUNC_STATIC( QFONTDIALOG_GETFONT2 )
{
  bool par1;
  QFont * par2 = (QFont *) _qt5xhb_itemGetPtr(2);
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  int par5 = ISNIL(5)? (int) 0 : hb_parni(5);
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, *par2, par3, par4,  (QFontDialog::FontDialogOptions) par5 ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}


//[1]static QFont getFont(bool *ok, QWidget *parent = 0)
//[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0, const QString &title = QString(), FontDialogOptions options = 0)

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT1 );
  }
  else if( ISBETWEEN(2,5) && ISLOG(1) && ISQFONT(2) && (ISQWIDGET(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}




#pragma ENDDUMP
