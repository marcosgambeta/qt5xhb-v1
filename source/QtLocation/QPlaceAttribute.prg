/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceAttribute

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD text
   METHOD setText
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceAttribute
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceAttribute>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceAttribute>
#endif
#endif

/*
QPlaceAttribute()
*/
void QPlaceAttribute_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * o = new QPlaceAttribute ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceAttribute(const QPlaceAttribute &other)
*/
void QPlaceAttribute_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * par1 = (QPlaceAttribute *) _qt5xhb_itemGetPtr(1);
  QPlaceAttribute * o = new QPlaceAttribute ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceAttribute()
//[2]QPlaceAttribute(const QPlaceAttribute &other)

HB_FUNC_STATIC( QPLACEATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceAttribute_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEATTRIBUTE(1) )
  {
    QPlaceAttribute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACEATTRIBUTE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString label() const
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->label ().toLatin1().data() );
  }
#endif
}

/*
void setLabel(const QString &label)
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLabel ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString text() const
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_TEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text ().toLatin1().data() );
  }
#endif
}

/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_SETTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
#endif
}



HB_FUNC_STATIC( QPLACEATTRIBUTE_NEWFROM )
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

HB_FUNC_STATIC( QPLACEATTRIBUTE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACEATTRIBUTE_NEWFROM );
}

HB_FUNC_STATIC( QPLACEATTRIBUTE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACEATTRIBUTE_NEWFROM );
}

HB_FUNC_STATIC( QPLACEATTRIBUTE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACEATTRIBUTE_SETSELFDESTRUCTION )
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
