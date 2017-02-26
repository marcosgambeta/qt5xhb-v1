/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QTextDocumentFragment

   DATA pointer
   DATA class_id INIT Class_Id_QTextDocumentFragment
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toPlainText
   METHOD toHtml
   METHOD fromPlainText
   METHOD fromHtml1
   METHOD fromHtml2
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextDocumentFragment>
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
#include <QTextDocumentFragment>
#endif
#endif

/*
QTextDocumentFragment()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocumentFragment * o = new QTextDocumentFragment (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTextDocumentFragment(const QTextDocument *document)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocument * par1 = (QTextDocument *) _qtxhb_itemGetPtr(1);
  QTextDocumentFragment * o = new QTextDocumentFragment ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTextDocumentFragment(const QTextCursor &range)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextCursor * par1 = (QTextCursor *) _qtxhb_itemGetPtr(1);
  QTextDocumentFragment * o = new QTextDocumentFragment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTextDocumentFragment(const QTextDocumentFragment &rhs)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocumentFragment * par1 = (QTextDocumentFragment *) _qtxhb_itemGetPtr(1);
  QTextDocumentFragment * o = new QTextDocumentFragment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QTextDocumentFragment()
//[2]QTextDocumentFragment(const QTextDocument *document)
//[3]QTextDocumentFragment(const QTextCursor &range)
//[4]QTextDocumentFragment(const QTextDocumentFragment &rhs)

// TODO: resolver conflitos

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QString toPlainText() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toPlainText (  ).toLatin1().data() );
  }
}


/*
QString toHtml(const QByteArray &encoding = QByteArray()) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->toHtml ( par1 ).toLatin1().data() );
  }
}


/*
static QTextDocumentFragment fromPlainText(const QString &plainText)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}


/*
static QTextDocumentFragment fromHtml(const QString &html)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}


/*
static QTextDocumentFragment fromHtml(const QString &html, const QTextDocument *resourceProvider)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  const QTextDocument * par2 = (const QTextDocument *) _qtxhb_itemGetPtr(2);
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}



HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
