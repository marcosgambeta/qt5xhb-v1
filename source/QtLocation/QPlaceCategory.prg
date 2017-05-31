/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEICON
#endif

CLASS QPlaceCategory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD categoryId
   METHOD setCategoryId
   METHOD name
   METHOD setName
   METHOD visibility
   METHOD setVisibility
   METHOD icon
   METHOD setIcon
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceCategory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceCategory>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceCategory>
#endif
#endif

#include <QPlaceIcon>

/*
QPlaceCategory()
*/
void QPlaceCategory_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * o = new QPlaceCategory ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceCategory(const QPlaceCategory &other)
*/
void QPlaceCategory_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * par1 = (QPlaceCategory *) _qt5xhb_itemGetPtr(1);
  QPlaceCategory * o = new QPlaceCategory ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceCategory()
//[2]QPlaceCategory(const QPlaceCategory &other)

HB_FUNC_STATIC( QPLACECATEGORY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceCategory_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECATEGORY(1) )
  {
    QPlaceCategory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACECATEGORY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString categoryId() const
*/
HB_FUNC_STATIC( QPLACECATEGORY_CATEGORYID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->categoryId () ) );
  }
#endif
}

/*
void setCategoryId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACECATEGORY_SETCATEGORYID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCategoryId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QPLACECATEGORY_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
#endif
}

/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QPLACECATEGORY_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QLocation::Visibility visibility() const
*/
HB_FUNC_STATIC( QPLACECATEGORY_VISIBILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->visibility () );
  }
#endif
}

/*
void setVisibility(QLocation::Visibility visibility)
*/
HB_FUNC_STATIC( QPLACECATEGORY_SETVISIBILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVisibility ( (QLocation::Visibility) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceIcon icon() const
*/
HB_FUNC_STATIC( QPLACECATEGORY_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * ptr = new QPlaceIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QPLACEICON", true );
  }
#endif
}

/*
void setIcon(const QPlaceIcon &icon)
*/
HB_FUNC_STATIC( QPLACECATEGORY_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * par1 = (QPlaceIcon *) _qt5xhb_itemGetPtr(1);
    obj->setIcon ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACECATEGORY_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceCategory * obj = (QPlaceCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
#endif
}



HB_FUNC_STATIC( QPLACECATEGORY_NEWFROM )
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

HB_FUNC_STATIC( QPLACECATEGORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACECATEGORY_NEWFROM );
}

HB_FUNC_STATIC( QPLACECATEGORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACECATEGORY_NEWFROM );
}

HB_FUNC_STATIC( QPLACECATEGORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACECATEGORY_SETSELFDESTRUCTION )
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
