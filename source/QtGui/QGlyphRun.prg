/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRAWFONT
#endif

CLASS QGlyphRun

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clear
   METHOD overline
   METHOD rawFont
   METHOD setOverline
   METHOD setRawData
   METHOD setRawFont
   METHOD setStrikeOut
   METHOD setUnderline
   METHOD strikeOut
   METHOD underline

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGlyphRun
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGlyphRun>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGlyphRun>
#endif

/*
QGlyphRun ()
*/
HB_FUNC_STATIC( QGLYPHRUN_NEW1 )
{
  QGlyphRun * o = new QGlyphRun ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGlyphRun ( const QGlyphRun & other )
*/
HB_FUNC_STATIC( QGLYPHRUN_NEW2 )
{
  QGlyphRun * o = new QGlyphRun ( *PQGLYPHRUN(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGlyphRun ()
//[2]QGlyphRun ( const QGlyphRun & other )

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLYPHRUN_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    HB_FUNC_EXEC( QGLYPHRUN_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLYPHRUN_DELETE )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QGLYPHRUN_CLEAR )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool overline () const
*/
HB_FUNC_STATIC( QGLYPHRUN_OVERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->overline () );
  }
}



/*
QRawFont rawFont () const
*/
HB_FUNC_STATIC( QGLYPHRUN_RAWFONT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRawFont * ptr = new QRawFont( obj->rawFont () );
    _qt5xhb_createReturnClass ( ptr, "QRAWFONT", true );
  }
}



/*
void setOverline ( bool overline )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETOVERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverline ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setRawData ( const quint32 * glyphIndexArray, const QPointF * glyphPositionArray, int size )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETRAWDATA ) // TODO: corrigir implementacao
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const quint32 * par1 = (const quint32 *) _qt5xhb_itemGetPtr(1);
    const QPointF * par2 = (const QPointF *) _qt5xhb_itemGetPtr(2);
    obj->setRawData ( par1, par2, PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawFont ( const QRawFont & rawFont )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETRAWFONT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRawFont ( *PQRAWFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrikeOut ( bool strikeOut )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETSTRIKEOUT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStrikeOut ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUnderline ( bool underline )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETUNDERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUnderline ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool strikeOut () const
*/
HB_FUNC_STATIC( QGLYPHRUN_STRIKEOUT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->strikeOut () );
  }
}


/*
bool underline () const
*/
HB_FUNC_STATIC( QGLYPHRUN_UNDERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->underline () );
  }
}



HB_FUNC_STATIC( QGLYPHRUN_NEWFROM )
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

HB_FUNC_STATIC( QGLYPHRUN_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLYPHRUN_NEWFROM );
}

HB_FUNC_STATIC( QGLYPHRUN_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLYPHRUN_NEWFROM );
}

HB_FUNC_STATIC( QGLYPHRUN_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLYPHRUN_SETSELFDESTRUCTION )
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