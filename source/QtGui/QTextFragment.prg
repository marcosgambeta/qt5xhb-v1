/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTCHARFORMAT
REQUEST QGLYPHRUN

CLASS QTextFragment

   DATA pointer
   DATA class_id INIT Class_Id_QTextFragment
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD position
   METHOD length
   METHOD contains
   METHOD charFormat
   METHOD charFormatIndex
   METHOD text
   METHOD glyphRuns
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextFragment>
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
#include <QTextFragment>
#endif
#endif

/*
QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocumentPrivate * par1 = (QTextDocumentPrivate *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QTextFragment * o = new QTextFragment ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextFragment()
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextFragment * o = new QTextFragment (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextFragment(const QTextFragment &o)
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextFragment * par1 = (QTextFragment *) _qtxhb_itemGetPtr(1);
  QTextFragment * o = new QTextFragment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
//[2]QTextFragment()
//[3]QTextFragment(const QTextFragment &o)

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTFRAGMENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_ISVALID )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int position() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_POSITION )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}


/*
int length() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_LENGTH )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
bool contains(int position) const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CONTAINS )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->contains ( (int) hb_parni(1) ) );
  }
}


/*
QTextCharFormat charFormat() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMAT )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int charFormatIndex() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMATINDEX )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->charFormatIndex (  ) );
  }
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_TEXT )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
QList<QGlyphRun> glyphRuns(int from = -1, int length = -1) const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_GLYPHRUNS )
{
  QTextFragment * obj = (QTextFragment *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns ( (int) ISNIL(1)? -1 : hb_parni(1), (int) ISNIL(2)? -1 : hb_parni(2) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGLYPHRUN" );
    #else
    pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
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
        hb_itemPutPtr( pItem, (QGlyphRun *) new QGlyphRun ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



HB_FUNC_STATIC( QTEXTFRAGMENT_NEWFROM )
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

HB_FUNC_STATIC( QTEXTFRAGMENT_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QTEXTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTFRAGMENT_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QTEXTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTFRAGMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTFRAGMENT_SETSELFDESTRUCTION )
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