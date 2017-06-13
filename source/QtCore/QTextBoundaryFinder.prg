/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTextBoundaryFinder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD string
   METHOD toStart
   METHOD toEnd
   METHOD position
   METHOD setPosition
   METHOD toNextBoundary
   METHOD toPreviousBoundary
   METHOD isAtBoundary
   METHOD boundaryReasons

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBoundaryFinder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextBoundaryFinder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextBoundaryFinder>
#endif

/*
QTextBoundaryFinder()
*/
void QTextBoundaryFinder_new1 ()
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextBoundaryFinder(const QTextBoundaryFinder &other)
*/
void QTextBoundaryFinder_new2 ()
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( *PQTEXTBOUNDARYFINDER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextBoundaryFinder(BoundaryType type, const QString &string)
*/
void QTextBoundaryFinder_new3 ()
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( (QTextBoundaryFinder::BoundaryType) hb_parni(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/
void QTextBoundaryFinder_new4 ()
{
  const QChar * par2 = (const QChar *) _qt5xhb_itemGetPtr(2);
  unsigned char * par4 = ISNIL(4)? 0 : (unsigned char *) _qt5xhb_itemGetPtr(4);
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( (QTextBoundaryFinder::BoundaryType) hb_parni(1), par2, PINT(3), par4, OPINT(5,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QTextBoundaryFinder()
//[2]QTextBoundaryFinder(const QTextBoundaryFinder &other)
//[3]QTextBoundaryFinder(BoundaryType type, const QString &string)
//[4]QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextBoundaryFinder_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBOUNDARYFINDER(1) )
  {
    QTextBoundaryFinder_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QTextBoundaryFinder_new3();
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QTextBoundaryFinder_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_DELETE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_ISVALID )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
BoundaryType type() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TYPE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
QString string() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_STRING )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->string () ) );
  }
}

/*
void toStart()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOSTART )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->toStart ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toEnd()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOEND )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->toEnd ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int position() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_POSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->position () );
  }
}

/*
void setPosition(int position)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SETPOSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPosition ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int toNextBoundary()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TONEXTBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toNextBoundary () );
  }
}

/*
int toPreviousBoundary()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOPREVIOUSBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toPreviousBoundary () );
  }
}

/*
bool isAtBoundary() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_ISATBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isAtBoundary () );
  }
}

/*
BoundaryReasons boundaryReasons() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_BOUNDARYREASONS )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->boundaryReasons () );
  }
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROM )
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

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SETSELFDESTRUCTION )
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
